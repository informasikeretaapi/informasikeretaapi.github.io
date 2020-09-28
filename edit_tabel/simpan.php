<?php 
	include "koneksi.php";
	
	$id = $_POST['id'];
	$nama=$_POST['nama_provinsi'];
	$query = "update data_provinsi set nama_provinsi='".$nama."' where id_provinsi=".$id;
	
	$update = mysqli_query($conn,$query);
	
	echo json_encode(array('st'=>1));
?>