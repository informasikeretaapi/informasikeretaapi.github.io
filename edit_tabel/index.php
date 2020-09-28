<html>
<head>
	<!-- CSS untuk bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css"> 

</head>
<body>

<?php
	include"koneksi.php";
	
	$sql = "select * from data_provinsi";
	$result = mysqli_query($conn,$sql);	
?>
<div class="container">

	<br>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="table-responsive">
				<table id="tabel_provinsi" class="table table-bordered table-striped">
					<thead>
						<tr>
							<td width="15%">ID</td>
							<td width="65%">Nama Provinsi</td>
							<td width="20%">Action</td>
						</tr>
					</thead>
					<tbody>
						<?php
							while($row=mysqli_fetch_assoc($result)){
								echo"<tr>";
								echo"<td>".$row['id_provinsi']."</td>";
								echo"<td id='nama_".$row['id_provinsi']."'>".$row['nama_provinsi']."</td>";
								echo"<td id='btn_".$row['id_provinsi']."'><a onclick='aksi_update(".$row['id_provinsi'].")' data-id='".$row['id_provinsi']."' class='btn btn-info btn-md'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a></td>";
								echo"</tr>";
							}
						?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
 </div>

	<!-- js untuk jquery -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<!-- js untuk bootstrap -->
	<script src="js/bootstrap.js"></script>
	
	
	<script type="text/javascript">
	
		function tombol_update(id_provinsi) {
			return "<a onclick='aksi_update("+id_provinsi+")' data-id='"+id_provinsi+"' class='btn btn-info btn-md'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>";
		}
		
		function tombol_save(id_provinsi) {
			return "<a onclick='aksi_simpan("+id_provinsi+")' data-id='"+id_provinsi+"' class='btn btn-success btn-md'><span class='glyphicon glyphicon-floppy-disk' aria-hidden='true'></span></a>";
		}
		
		//ketika tombol simpan di klik		
		function aksi_simpan(id_provinsi) {
			var id = id_provinsi;
			var nama = $('#t_nama_'+id).val();
			
			//kirim data ajax simpan
			$.ajax({
				type : 'POST',
				url : 'simpan.php',
				data : {'id':id,'nama_provinsi':nama},
				success:function(data){
					if(data.st=='1') {
						$('#btn_'+id).html(tombol_update(id));
						$('#nama_'+id).text(nama);
					}
				},dataType : 'json'
			});
			
			
		}
		
		//ketika tombol update di klik
		function aksi_update(id_provinsi) {
			var id = id_provinsi;
			var nama = $('#nama_'+id).text();
			$('#btn_'+id).html(tombol_save(id));
			$('#nama_'+id).html('<input id="t_nama_'+id+'" type="text" class="form-control" value="'+nama+'">');
		}
		
			
	</script>
</body>
</html>
