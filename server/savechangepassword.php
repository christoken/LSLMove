<?php
//include("auth.php");
include("db.php");
//This file is for savibg breeding serviceprovider
				$data="";
						$pswdusername=$_POST['pswdusername'];
						$currentpswd=$_POST['currentpswd'];						
						$newpswd=md5($_POST['newpswd']);
						 
						 
						
						//$pswdusername="chris";
						//$currentpswd="chep";						
						//$newpswd=md5("chep2");
													
				
	$sql="UPDATE  tbl_locationlog_user SET password='$newpswd', passwordchange='1'
	WHERE username='$pswdusername' AND password='".md5($currentpswd)."'";
							   
	$result1=mysqli_query($con,$sql);
	$rows=mysqli_affected_rows($con);	
		
	if ($rows>0){ $data="success";
	}
	else{
		$data="fail";
	}
echo json_encode($data);
?>