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
$OK = true;
$sql = 'SELECT * FROM employee';
$stmt = $conn->prepare($sql);
$results = $stmt->execute();
$row   = $stmt->fetchAll();
$error = $stmt->errorInfo();
$response = json_encode( $row, JSON_UNESCAPED_UNICODE );
if( ! $response )
{
	echo "[{'ERROR': 'Error found while retrieving information.'}]";
}
else
{
	echo $response;
}
?>