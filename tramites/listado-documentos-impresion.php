<?
    require_once('conf/clave.php');
	//print_r($_SESSION); 
	$idtramite = $Tra->idtramite($_SESSION['consecutivo'])
	?>
	<script>
	function imp()
	{
	  document.getElementById('imprimir').style.display = "none";
	  window.print();
	}
	</script>
	<style type="text/css">
<!--
.peq {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
}
-->
</style>
	<table width="600" align="center">
	 <tr><td colspan="3" align="right"><img src="imagenes/btn_imprimir.png" id="imprimir" onclick="imp()"></td></tr>
	 <tr><td colspan="3" class="peq"><b>Usuario:</b> <?=$_SESSION['usu_nombre']?><br><b>Fechahora:</b> <?=$datetime?><br><b>IP:</b> <?=$_SESSION['equipo']?></td></tr>
	 <tr><td colspan="3" class="titulos"><b><?=$_SESSION['consecutivo']?></b></td></tr>
	<tr>
    <td width="300" class="titulos"><b>Nombre  Documento</b></td>
	<td width="300" class="titulos"><b>Nombre  Archivo</b></td>
    <td width="200" class="titulos"><div align="center"><b>Observaciones</b></div></td>
  </tr>
<?	$db = new Database();
	   $sql = "SELECT dxt_id,dxt_nombre,dxt_file,dxt_observaciones FROM tramite_documentos 
	           WHERE dxt_tra_id=".$idtramite." AND dxt_estado=1;"; //exit;
		//echo $sql;
	   $db->query($sql);
	   $tabla = "";
	   while($db->next_row())
	   {   if($db->dxt_nombre=="")
	          $db->dxt_nombre = $db->dxt_file;
	      $tabla .= '<tr><td style="text-transform:uppercase; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px; text-align:justify" valign="top">'.utf8_decode($db->dxt_nombre).'</td>
		  <td style="text-transform:uppercase; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px; text-align:justify" valign="top">'.$db->dxt_file.'</td>
                         <td style="text-transform:uppercase; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px; text-align:justify">'.utf8_decode($db->dxt_observaciones).'</td>';
		  $tabla .= '</tr>';
	   }
	   $db->close();echo $tabla;
?>

</table>