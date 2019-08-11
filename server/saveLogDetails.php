<?php
 /*
 $device="xxxxxx_yyyyy"; 
 $lat=-1.268342;
 $long=36.80573026;
 $telNo='0722977672';
 $fingerOrPin=0;
 $simSerial1="353384095744026";
 //$simSerial2="353384097744024";
 //$simSerial1="";
 $simSerial2="";
 $address=" Prof Mourice Alala Road, Nairobi, Kenya";
 $logType=1;
 */
 $simSerial1="353384095744026";
 $simSerial2="";
 $lat=$_POST['latitude'];
 $long=$_POST['longitude'];
 //$simSerial1=$_POST['simSerial1'];
 //$simSerial2=$_POST['simSerial2'];
 $fingerOrPin=$_POST['fingerOrPin'];  
 $device=$_POST['device'];
 $address=$_POST['address'];
 $telNo=$_POST['telNo'];
 $logType=$_POST['logType'];
 
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
 //echo ("Size of address=  ". $sz); 
 $streetName=""; $cityName=""; $country="";
 if($sz>3){
 
 $streetName=$add[0].", ".$add[1]; 
 $city=$add[2]; 
 $country=$add[3];
 }
 elseif($sz>2){$streetName=$add[0]; $cityName=$add[1]; $country=$add[2];
 }elseif ($sz>1){$streetName=$add[0]; $cityName=$add[1]; $country="";
 }elseif ($sz>0){$streetName=$add[0]; $cityName=""; $country="";
 }else {$streetName=""; $cityName=""; $country=""; } 
 
 $streetName=$address;
 if($fingerOrPin==0){$auth="Fingerprint";}else {$auth="Pin";}
 
	$data=array();
	
	if(confirmUser($telNo,$sim)){
		if($logType==0){	
			saveLocationDetails($telNo,$sim,$uuid,$model,$streetName,$cityName,$country,$lat,$long,$auth);
		}else if($logType==1){ 		
			getSavedCoordinates($lat, $long);
		}
		}
		else {
		$data=" Error; You do not have login credentials";
		}
				
	 function saveLocationDetails($telNo,$simSerial,$uuid,$model,$streetName,$cityName,$country,$lat,$long,$fingerOrPin){
		 include("db.php");
	 	$result1=mysqli_query($con,"INSERT INTO tbl_locationlog_logs
		(telNo,simSerial,deviceID,devicemodel,streetName,cityName,country,latitude ,longitude,fingerOrPin) 
		VALUES ('$telNo','$simSerial','$uuid','$model','$streetName','$cityName','$country','$lat','$long','$fingerOrPin')");	
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
			WHERE telNo='$telNo'";
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
		//$result3=mysqli_query($con,$sqry3);	
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
	
	/* get the point Name using the following steps
	1. Get the logged coordinates
	2. get the coordinates of the saved points and calculate the distance from what is logged
	3. Pick the closest and log it if it meets mimimum distance else no logging.
	*/
	function getSavedCoordinates($lat1, $lon1){
	include("db.php");
	$sqry5="SELECT latitude,longitude ,point FROM tbl_locationlog_locations";
			$result5=mysqli_query($con,$sqry5);
			while($row5 = $result5->fetch_assoc()){
			$pointsNames = $row5['point'];	
			$pointsDis = distance($lat1, $lon1, $row5['latitude'], $row5['longitude']) ;			
			$sqry6="INSERT INTO tbl_locationlog_Distances (pointsNames,pointsDis) 
			VALUES ('$pointsNames','$pointsDis')";
			$result6=mysqli_query($con,$sqry6);			
			//$rowcount6=mysqli_num_rows($result6); 		
			
		}
		//select the name of the logged point and save  
		$sqry7="SELECT MIN( pointsDis ) as dis,pointsNames
				FROM tbl_locationlog_distances
				WHERE pointsDis = (
				SELECT MIN( pointsDis )
				FROM tbl_locationlog_distances ) ";
		$result7=mysqli_query($con,$sqry7);
		while($row7 = $result7->fetch_assoc()){
			  $pointsNames = $row7['pointsNames'];
			  $dis=$row7['dis'];
			  if ($dis<0.02){			  
				saveLocationDetails($GLOBALS['telNo'],$GLOBALS['sim'],$GLOBALS['uuid'],$GLOBALS['model'],$pointsNames,$GLOBALS['cityName'],$GLOBALS['country'],$lat1,$lon1,$GLOBALS['auth']);
			  } else {
			$GLOBALS['data']="You cannot log a position which you are not close enough";
			}
			}
			//truncate the distance table
			$sqry8="TRUNCATE TABLE tbl_locationlog_distances";
			//$result8=mysqli_query($con,$sqry8);
	}
	
 function distance($lat1, $lon1, $lat2, $lon2){
    $pi80 = M_PI / 180;
    $lat1 *= $pi80;
    $lon1 *= $pi80;
    $lat2 *= $pi80;
    $lon2 *= $pi80;
    $r = 6372.797; // mean radius of Earth in km
    $dlat = $lat2 - $lat1;
    $dlon = $lon2 - $lon1;
    $a = sin($dlat / 2) * sin($dlat / 2) + cos($lat1) * cos($lat2) * sin($dlon / 2) * sin($dlon / 2);
    $c = 2 * atan2(sqrt($a), sqrt(1 - $a));
    $km = $r * $c;
   return $km;
   }
//distance($lat1, $lon1, $lat2, $lon2);
	
?>