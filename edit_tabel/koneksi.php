<?php
	$database = 'db_data_ajax';
	$user = 'root'; 
	$pass = ''; 
	$host = 'localhost'; 

	$conn = mysqli_connect($host,$user,$pass,$database);

	if (!$conn) {
    	die("Connection failed: " . mysqli_connect_error());
	}

?>