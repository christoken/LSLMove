<?php 
ini_set("display_errors", true);
ini_set("html_errors", true); 

class listEmployeeCollection {
	function __construct($items) {
		$this->items = $items;
	}
} 
 //function that creates a ModelCarsCollection object loaded with a few ModelCar instances:
function getEmployee() {
	include("db.php");
	$data=array();
	//itemid	initial_stock	issued_items	item_category	item_code	item_description	item_name	stock_on_hand
	$sqry="SELECT pf_number,surname,othernames,assignment_code
FROM employees
WHERE pf_number IS NOT NULL
AND pf_number != ''";
	$q=mysqli_query($con,$sqry);
	while ($row=mysqli_fetch_object($q)){
	$data[]=$row;
}	 
$collection = new listEmployeeCollection($data); 	
    return $collection;
}
$method = $_SERVER['REQUEST_METHOD'];
$result = "";
//A switch statement will help us check the request type and decide what to do:
switch ($method) {	
  case 'GET':    
    $result = getEmployee();
    header('Cache-Control: no-cache, must-revalidate');
    header("content-type:application/json");
    echo(json_encode($result));
    break; 
  case 'POST':
    //array containing a single item with a success property set to true. 
	//When you json-encode this array, you obtain this JSON string:
    $result = array("success" => true);
    header('Cache-Control: no-cache, must-revalidate');
    header("content-type:application/json");
    echo(json_encode($result));
    break;   
}

?>
