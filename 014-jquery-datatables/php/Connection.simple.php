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
	$conn= null;
	$host= 'localhost';
	$db  =  'tutorials';
	$user= 'trainer';
	$pwd =  'tut212';
	try
	{
		$conn = new PDO( 'mysql:host='.$host.';dbname='.$db, $user, $pwd );
	}
	catch ( PDOException $e ) {
		echo '<p>Cannot connect to database !!</p>';
		// echo '<p>'.$e.'</p>';
		exit;
	}
	return $conn;
}

?>
