<?php

	//get address
// $lat=$_POST['latitude'];
 //$long=$_POST['longitude'];
 //$device=$_POST['device'];
 $device="xxxxxx_yyyyy";
 $d=explode("_",$device);
 $uuid=$d[1];
 $model=$d[0];
 $lat=-1.268342;
 $long=36.80573026;	
   $geocode="https://maps.googleapis.com/maps/api/geocode/json?latlng=".trim($lat).",".trim($long)."&sensor=false&key=AIzaSyBlRL7HLQhCd-rz7DdB5aKTe63kFk8jBPM";
	//$url="//maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyCNOiO5P22wUCCOe7MIquPFPps4b6N3LAI&ver=3.exp"
	$data=array();
	$data=getAddress( $geocode);
	$dataDetails=explode(",",$data);
	$street=$dataDetails[0];
	$city=$dataDetails[1];
	$country=$dataDetails[2];
	
	saveLocationDetails($uuid,$model,$street,$city,$country,$lat,$long);
	echo json_encode($data);
 
 function getAddress($geocode){  
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $geocode);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_PROXYPORT, 3128);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    $response = curl_exec($ch);
    curl_close($ch);
    $output = json_decode($response);
    $dataarray = get_object_vars($output);
    if ($dataarray['status'] != 'ZERO_RESULTS' && $dataarray['status'] != 'INVALID_REQUEST') {        
		if (isset($dataarray['results'][0]->formatted_address)) {
            $address = $dataarray['results'][0]->formatted_address;
        } else {
            $address = 'Not Found1';
        }
    } else {
        $address = 'Not Found2';
    }
    return $address;
	}	
	function saveLocationDetails($uuid,$model,$street,$city,$country,$lat,$long){
		include("db.php");
	 	$result1=mysqli_query($con,"INSERT INTO tbl_locationlog_logs(deviceID,devicemodel,streetName,cityName,country,latitude ,longitude) 
		VALUES ('$uuid','$model','$street','$city','$country','$lat','$long')");	
	if (!$result1){ $data=" There seems to be an error; Your data has not updated";
	}
	else{
		$data="Your data has been updated successfully";
	}
		//echo json_encode($data);	 
	}
?>