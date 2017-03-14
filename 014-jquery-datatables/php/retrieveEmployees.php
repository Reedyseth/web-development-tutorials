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
*	1.0.1	|	10-Mar-2017	|	Add additional comments to code.
*	##########################################################################################
*/
// Let us tell the server that we are delivering a JSON content
header('Content-Type: application/json');
require_once 'Connection.simple.php'; // This is where all the connection layer is store.
$conn = dbConnect(); // Function located in our previous included file.
$OK = true; // We use this to verify the status of the update.
// Create the query
$sql = 'SELECT * FROM employee';
// we have to tell the PDO that we are going to send values to the query
$stmt = $conn->prepare($sql);
// Now we execute the query passing an array to execute(), only require is binding params
$results = $stmt->execute();
// Extract the values from $result
$row   = $stmt->fetchAll(); // $row is an associative array with information, if found
$error = $stmt->errorInfo(); // Since the statement contains information about our query, let us get any error info
// echo $error[2]; // in case a error is found this array index will contain information.
// last validation
// if error found let us create a nice error object.
if( $error[2] !== null )
{
	$response = "[";
		$response .= "{ ";
			$response .= " \"ERROR\": \"Error found while retrieving information.\", ";
			$response .= " \"MESSAGE\": \"". $error[2] ."\" ";
		$response .= "}]";
}
else
{
	$response = json_encode( $row, JSON_UNESCAPED_UNICODE ); // second parameter to display unicode without scape chars.
}

echo $response; // The JSON data.
?>