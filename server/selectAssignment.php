<?php
include("db.php");
mysqli_set_charset($con,"UTF8");
//echo "Running";
 $data=array();
 //echo "Running";
$sql="SELECT assignment_code,assignment_name FROM assignments";       
$q=mysqli_query($con,$sql);
$i=0;
while ($row=mysqli_fetch_object($q)){
 $data[]=$row;
 //echo ("Running==".$data[$i]->pf_number."<br>");
// $i=$i+1;
}
//echo $i;
echo json_encode($data);
?>