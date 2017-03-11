<?php
/**
 *
 * @author  Ing. Israel Barragan C.  Email: reedyseth@gmail.com
 * @since   07-Jun-2013
 * ##########################################################################################
 * Comments:
 * This includes a function that will return a PDO Instance.
 * ##########################################################################################
 * @version 1.0.1
 * ##########################################################################################
 * 1.0   | 06-Jun-2013 | Creation of new class with parameter as constructor.
 * 1.0,1 | 10-Mar-2017 | Update connection comments.
 * ##########################################################################################
 */

function dbConnect() {
	// Let us initialize the connection variables.
	$conn= null;
	$host= 'localhost';
	$db  =  'tutorials';
	$user= 'trainer';
	$pwd =  'tut212';
	// To prevent any error let us wrapp the connection initialization with at try/catch block.
	try
	{
		// The parameters send to the PDO class are:
		// 1. DSN (Data Source Name). Since we are using a connection with mysql the DSN will be
		//    mysql:host=hostname;dbname=databaseName
		// 2. Database user name.
		// 3. Database password
		$conn = new PDO( 'mysql:host='.$host.';dbname='.$db, $user, $pwd );
		//echo 'Connected succesfully.<br>';
	}
	catch ( PDOException $e ) {
		echo '<p>Cannot connect to database !!</p>';
		// The following line should be commented, otherwise if you want to debug any connection issues
		// leave it like it is.
		echo '<p>'.$e.'</p>';
		exit;
	}
	return $conn; // The connection object that we are going to use later.
}

?>
