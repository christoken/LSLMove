<?php
 /*
 $device="xxxxxx_yyyyy"; 
 $lat=1.268342;
 $long=36.80573026; 
 $telNo='0722977677';
 $fingerOrPin=0;
 $address=" Prof Mourice Alala Road, Nairobi, Kenya";
 $client="Laico";
 $location="Nairobi";
 $point="Point A";
 
 //$simSerial2="353384097744024";
 //$simSerial1="";
 $simSerial2="";
 */
 $simSerial1="353384095744026";
 $lat=$_POST['latitude'];
 $long=$_POST['longitude'];
 $telNo=$_POST['telNo'];
 //$simSerial1=$_POST['simSerial1'];
 //$simSerial2=$_POST['simSerial2'];
 $fingerOrPin=$_POST['fingerOrPin'];  
 $device=$_POST['device'];
 $address=$_POST['address'];
 $client=$_POST['client'];
 $location=$_POST['location'];
 $point=$_POST['point'];
 
 $sim="";
 if($simSerial1!=""){
 $sim=$simSerial1;
 }else if ($simSerial2!=""){
 $sim=$simSerial2;
 }
 
 $d=explode("_",$device);
 $uuid=$d[1];
 $model=$d[0];
 $auth="";
 $add=explode(",",$address);
 $sz=sizeof($add);
 echo ("Size of address=  ". $sz); 
 $streetName=""; $cityName=""; $country="";
 if($sz>3){$streetName=$add[0].$city=$add[1]; $city=$add[2]; $country=$add[3];
 }
 elseif($sz>2){$streetName=$add[0]; $cityName=$add[1]; $country=$add[2];
 }elseif ($sz>1){$streetName=$add[0]; $cityName=$add[1]; $country="";
 }elseif ($sz>0){$streetName=$add[0]; $cityName=""; $country="";
 }else {$streetName=""; $cityName=""; $country=""; } 
 if($fingerOrPin==0){$auth="Fingerprint";}else {$auth="Pin";}
 
	$data=array();
	if(confirmUser($telNo,$sim)){
		
		saveLocationDetails($sim,$lat,$long,$auth,$client,$location,$point,$address,$uuid,$model);
		}
		else {
		$data=" Error; You do not have login credentials";
		}
		
	 function saveLocationDetails($simSerial,$latitude,$longitude,$fingerOrPin,$client,$location,$point,$address,$deviceID,$devicemodel){
		 include("db.php");
	 	$result1=mysqli_query($con,"INSERT INTO tbl_locationlog_locations
		(simSerial,latitude,longitude,fingerOrPin,client,location,point,address,deviceID,devicemodel) 
		VALUES ('$simSerial','$latitude','$longitude','$fingerOrPin','$client','$location','$point','$address','$deviceID','$devicemodel')");	
	if (!$result1){ $data=" There seems to be an error; Your data has not updated";
	}
	else{
		$data="Your data has been updated successfully";
	}
		echo json_encode($data);	
	}
	
	// a function to check iof this user is acceptable.
	//It uses the phone number and the sim serial
	
	function confirmUser($telNo,$sim){
	 include("db.php");
	 $sqry1="";$sqry2="";$sqry3="";$sqry4="";
	 $v=0;$sim;
	 
	 $sqry1="SELECT * FROM tbl_locationlog_user
			WHERE	telNo='$telNo'";
	$result=mysqli_query($con,$sqry1);	
	  $rowcount3=mysqli_num_rows($result); 		 	   
	  
	  if($rowcount3>0){	  
	  while($row = $result->fetch_assoc()){		
		 $v = $row['verified'];
		 if($v==1){
		 echo "V1=   ".$v;
		 //check if the phone matches with the sim serial
		 //call save log location with existing sim serial
		    $sqry2="SELECT * FROM tbl_locationlog_user
			WHERE	simSerial='$sim' AND telNo='$telNo'";
			$result2=mysqli_query($con,$sqry2);
			$rowcount2=mysqli_num_rows($result2);
			if($rowcount2>0){				
				return true;
			}
		else{
			echo "Records not matching";
			$data="Sim and phone numbers are not matching";
			return false;			
			}
		
		 }
		   //else $v==0;
		 else{
		   
			echo "V2=   ".$v;
		//call save log location with new sim serial
		    $verified=1;		
			$sqry2="SELECT * FROM tbl_locationlog_user
			WHERE	telNo='$telNo'";
			$result2=mysqli_query($con,$sqry2);
			//update the user table to indicate you had visited the page and 
			//hence your phone and sim serial must match next time you visit
			while($row1 = $result2->fetch_assoc()){	
			$sqry3="UPDATE  tbl_locationlog_user SET simSerial='$sim',verified='$verified'
			WHERE telNo='$telNo'";
			$rowcount2=mysqli_num_rows($result2); 		 	   
	  if($rowcount2>0){
		$result3=mysqli_query($con,$sqry3);	
		return true;
		}
		else{
		$data="Sim and phone numbers are not matching";
			return false;
		   }
		}
		 }
				//echo "Tel is ". $GLOBALS['telNo'];		 
	   } //end of while	   
	  }//if for records from user table
	  else{
	  echo "Return false";
	  return false;
	  
	  }
	}
?>