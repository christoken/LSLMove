<?php
		$pfIDNo=$_POST['pfIDNo'];
		$empNames=$_POST['empNames'];
		$assignment=$_POST['assignment'];
		$dateDeployedLeft=$_POST['dateDeployedLeft'];
		$salaryMonth=$_POST['salaryMonth'];
		$daysWorked=$_POST['daysWorked'];
		$changeType=$_POST['changeType'];
		$changeTypeDesc=$_POST['changeTypeDesc'];		
		$telNo=$_POST['telNo'];
		
		/*
		$pfIDNo='66666';
		$empNames='Johnson';
		$assignment='Ass Two';
		$dateDeployedLeft='2019-10-10';
		$salaryMonth='2019-11-11';
		$daysWorked=20;
		$changeType='Leaving';		
*/
	$data=array();
	
	savePayChanges($pfIDNo,$empNames,$assignment,$dateDeployedLeft,$salaryMonth,
	$daysWorked,$changeType,$telNo,$changeTypeDesc);
				
	 function savePayChanges($pfIDNo,$empNames,$assignment,$dateDeployedLeft,$salaryMonth,
	 $daysWorked,$changeType,$telNo,$changeTypeDesc){
		 include("db.php");
	 	$result1=mysqli_query($con,"INSERT INTO payroll_changes2
		(PFIDNo,empNames,assignmentCode,changeDate,salaryMonth,daysWorked,changeType,telNo,changeTypeDesc) 
		VALUES ('$pfIDNo','$empNames','$assignment','$dateDeployedLeft','$salaryMonth',
		'$daysWorked','$changeType','$telNo','$changeTypeDesc')");	
	
	if (!$result1){ 
	$data=" There seems to be an error; Your data has not updated";
	//$data=$result1;
	}
	else{
		$data="Your data has been updated with ".$changeTypeDesc;
	}
		echo json_encode($data);	
	}
?>