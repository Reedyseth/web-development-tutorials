<?php
/**
*	@author 	Ing. Israel Barragan C.  Email: reedyseth@gmail.com
*	@since 		11-Nov-2015
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
*	V151111	|	11-Nov-2015	|	Initial file, get employees and create a Json.
*	##########################################################################################
*/
	header('Content-Type: application/json');
	require_once 'Connection.simple.php';
	$conn = dbConnect();
	$OK = true; // We use this to verify the status of the update.
	// Create the query
	$sql = 'SELECT * FROM employee';
	// we have to tell the PDO that we are going to send values to the query
	$stmt = $conn->prepare($sql);
	// Now we execute the query passing an array toe execute();
	$results = $stmt->execute();
	// Extract the values from $result
	$row = $stmt->fetchAll();
	$error = $stmt->errorInfo();
	//echo $error[2];
	$response = json_encode( $row, JSON_UNESCAPED_UNICODE );
	echo ! $response ? false : $response;
?>