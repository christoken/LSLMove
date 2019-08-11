<?php
//ini_set('display_errors',1);
//ini_set('display_startup_errors',1);
//error_reporting('E_ALL');
include("db.php");
mysqli_set_charset($con,"UTF8");
//echo "Running";
 $data=array();
 //echo "Running";
$sql2="";
$sql3="";
$pfID=$_POST['pfIDNo'];
//$pfID='55943';
if(strlen($pfID)>5){
 $sql2="SELECT id_number,pf_number,surname,othernames,assignment_code FROM employees
WHERE id_number='$pfID' LIMIT 21000";   
$sql3="SELECT pf_number,surname,othernames,assignment_code 
FROM employees WHERE id_number='$pfID' ORDER BY employeeid DESC LIMIT 21000";    
}else{
$sql2="SELECT id_number,pf_number,surname,othernames,assignment_code FROM employees
WHERE pf_number='$pfID' LIMIT 21000";   
$sql3="SELECT id_number,pf_number,surname,othernames,assignment_code 
FROM employees WHERE pf_number='$pfID' ORDER BY employeeid DESC LIMIT 21000";
}
  
$q=mysqli_query($con,$sql2);

$i=0;

while ($row=mysqli_fetch_object($q)){
 $data[]=$row;
 //echo ("Running==".$data[$i]->pf_number."<br>");
 $i=$i+1;
}
     
$q3=mysqli_query($con,$sql3);
//$i=0;
while ($row=mysqli_fetch_object($q3)){
 $data[]=$row;
 //echo ("Running==".$data[$i]->pf_number."<br>");
 $i=$i+1;
}
//echo $i;
echo json_encode($data);
?>