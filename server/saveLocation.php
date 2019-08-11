<?php
	//get address
  //$lat=$_POST['latitude'];
  //$long=$_POST['longitude']; 
 // $lat=-1.2732729;
  //$long=36.8073668;	
   $geocode="https://maps.googleapis.com/maps/api/geocode/json?latlng=".trim($lat).",".trim($long)."&sensor=false&key=AIzaSyBlRL7HLQhCd-rz7DdB5aKTe63kFk8jBPM";
	//$url="//maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyCNOiO5P22wUCCOe7MIquPFPps4b6N3LAI&ver=3.exp"
 function getAddress(){  
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
  
  
?>