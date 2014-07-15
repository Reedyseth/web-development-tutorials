<?php
/**
*	@author 	Ing. Israel Barragan C.  Email: ibarragan at behstant dot com
*	@since 		07-Jul-2014
*	##########################################################################################
*	Comments:
*	This file is to show how to retrieve records from a database with PDO
*	The records are shown in a HTML table.
*
*	Requires:
*	Connection.simple.php, get this file here: http://behstant.com/blog/?p=413
*   jQuery and Boostrap.
*
* 	LICENCE:
*	You can use this code to any of your projects as long as you mention where you
* 	downloaded it and the author which is me :) Happy Code.
*
* 	LICENCIA:
*	Puedes usar este código para tus proyectos, pero siempre tomando en cuenta que
* 	debes de poner de donde lo descargaste y el autor que soy yo :) Feliz Codificación.
*	##########################################################################################
*	@version
*	##########################################################################################
*	140707	|	07-Jul-2014	|	Creation of new file to search a record by Id.
*	##########################################################################################
*/
	header('Content-Type: application/json');
	require_once 'Connection.simple.php';
	$conn = dbConnect();
	$OK = true; // We use this to verify the status of the update.
	// If 'buscar' is in the array $_POST proceed to make the query.
	if (isset($_GET['name'])) {
		// Create the query
		$data = "%".$_GET['name']."%";
		$sql = 'SELECT * FROM employee WHERE name like ?';
		// we have to tell the PDO that we are going to send values to the query
		$stmt = $conn->prepare($sql);
		// Now we execute the query passing an array toe execute();
		$results = $stmt->execute(array($data));
		// Extract the values from $result
		$rows = $stmt->fetchAll();
		$error = $stmt->errorInfo();
		//echo $error[2];
	}
	// If there are no records.
	if(empty($rows)) {
		echo json_encode( array('error'=>'There were not records','0'=> 'There were not records'));
	}
	else {
		echo json_encode($rows);
	}
?>