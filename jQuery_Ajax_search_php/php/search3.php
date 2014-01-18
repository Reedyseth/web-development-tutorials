<?php
/**
*	@author 	Ing. Israel Barragan C.  Email: ibarragan at behstant dot com
*	@since 		17-Jan-2013
*	##########################################################################################
*	Comments:
*	This file is to show how to retrieve a record from a database with PDO
*	The record is return in in a Json format.
*
*	Requires:
*	Connection.simple.php, get this file here: http://behstant.com/blog/?p=413
*   jQuery and Boostrap.
*
* 	LICENCE:
*	You can use this code in any of your projects as long as you mention where you
* 	downloaded it and the author which is me :) Happy Code.
*
* 	LICENCIA:
*	Puedes usar este código para tus proyectos, pero siempre tomando en cuenta que
* 	debes de poner de donde lo descargaste y el autor que soy yo :) Feliz Codificación.
*	##########################################################################################
*	@version
*	##########################################################################################
*	V140117	|	17-Jan-2014	|	Initial file, search a record and creates a Json.
*	##########################################################################################
*/
	require_once 'Connection.simple.php';
	$conn = dbConnect();
	$OK = true; // We use this to verify the status of the update.
	// If 'buscar' is in the array $_POST proceed to make the query.
	if (isset($_GET['id'])) {
		// Create the query
		$data = trim($_GET['id']);
		$sql = 'SELECT * FROM employee WHERE employee_id = ?';
		// we have to tell the PDO that we are going to send values to the query
		$stmt = $conn->prepare($sql);
		// Now we execute the query passing an array toe execute();
		$results = $stmt->execute(array($data));
		// Extract the values from $result
		$row = $stmt->fetch();
		$error = $stmt->errorInfo();
		//echo $error[2];
	}
	// If there are no records.
	if(empty($row) && !isset($row)) {
		echo '{"employee_id":"","0":"","name":"No record found","1":"","email":"","2":"","telephone":"","3":""}';
	}
	else {
		echo json_encode($row);
	}
?>