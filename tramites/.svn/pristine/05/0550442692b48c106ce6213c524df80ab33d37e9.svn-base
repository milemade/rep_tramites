<?php
	$q=$_GET['codigotra'];
	$my_data=mysql_real_escape_string($q);
	require_once("conf/clave.php");
	$sql="SELECT tra_consecutivo FROM tramite WHERE tra_consecutivo LIKE '%$my_data%' ORDER BY tra_consecutivo;";
	$dbb = new database();
	$dbb->query($sql);
		while($dbb->next_row())
		{
			echo $dbb->tra_consecutivo."\n";
		}
	
?>