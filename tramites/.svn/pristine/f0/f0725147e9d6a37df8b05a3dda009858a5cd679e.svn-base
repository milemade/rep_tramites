<? //print_r($_SESSION);?>

<script> 
 var n=0; 
function add() { 
  pepe = document.getElementById('tabla'); 
  n++; 
  fila = document.createElement('tr'); 
   
  celda = document.createElement('td'); 
  fila.appendChild(celda); 
  code=document.createElement('input'); 
  code.type='text'; 
  code.name='nom_'+n; 
  code.className = 'car';
  celda.appendChild(code); 
   
  celda = document.createElement('td'); 
  fila.appendChild(celda);       
  cant=document.createElement('input'); 
  cant.type='file'; 
  cant.name='arch_'+n; 
  celda.appendChild(cant); 
   
  
  celda = document.createElement('td'); 
  fila.appendChild(celda);       
  comen=document.createElement('textarea'); 
  comen.name='comen_'+n; 
  comen.className = 'car';
  celda.appendChild(comen); 
  pepe.appendChild(fila);
} 
function eliminardoc(n)
{
   if (confirm("Esta seguro que desea eliminar este registro!"))
   {
		window.location="documento_eliminar.php?id="+n;
   }
}
</script>
<style type="text/css">
<!--
.titulos {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bolder;
	color: #16628F;
}
.maas {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	color: #16628F;
	width:24px; 
	height:24px; 
	font-size: 20px;
	font-weight: bolder;
	border-top-color: #16628F;
	border-right-color: #16628F;
	border-bottom-color: #16628F;
	border-left-color: #16628F;
}
-->
</style>
 
<div id="loginPan_vtres">
<? if($_SESSION['usu_per_id']<5){?>
<div align="right"><input type="button" class="maas" value="+" onclick="add()" /></div>
<form name="frmcargadoc" action="aplicacion.php" method="post" enctype="multipart/form-data">
  <table >
  <tr><td style="padding-left:275px">Consecutivo:  <?=$_SESSION['consecutivo']?></td></tr>
  </table>
  <table border="0">
  <tbody id="tabla"> 
  <tr>
	  <td width="144" class="titulos"><div align="center"><strong>Nombre Archivo</strong></div></td>
      <td width="218" class="titulos"><div align="center"><strong>Archivo</strong></div></td>
      <td width="161" class="titulos"><div align="center"><strong>Observaciones</strong></div></td>
    </tr>
</tbody> 
  </table>
  
  <div align="center">
<input name="limpiar" type="reset" class="button" value="Limpiar" />
<input name="enviar" type="submit" class="button" value="Guardar"/></div>
<input type="hidden" name="consecutivo" value="<?=$_SESSION['consecutivo']?>">
<input type="hidden" name="n" value="45">
<input type="hidden" name="dxt_tra_id" value="<?=$Tra->idtramite($_SESSION['consecutivo'])?>">
<input type="hidden" name="dxt_equipo" value="<?=$Gen->nombreequipo()?>">
<input type="hidden" name="dxt_usu_id" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="iddoc" value="<?=$_POST['iddoc']?>">
</form>
 <br class="clear" />
 <? } ?>
<div class="cabecera">Documentos <?php if(isset($_SESSION['consecutivo']) && $_SESSIONg['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
<?php if($_POST['directorio']=="") 
        $_POST['directorio'] = $path_documentos.$_SESSION['consecutivo'];
	  echo $algo;
if(is_dir($_POST['directorio'])) { ?>
 <table border="0">
 <tr>
 <td colspan="3" align="right"><a href="listado-documentos-impresion.php" target="blank">
                               <img src="imagenes/ico.imprimir.png" target="blank">
							   </a></td>
 </tr>
  <tr>
    <td width="300" class="titulos"><b>Nombre  Documento</b></td>
    <td width="200" class="titulos"><div align="center"><b>Archivo</b></div></td>
    <td width="200" class="titulos"><div align="center"><b>Observaciones</b></div></td>
	<td width="100" class="titulos"><div align="center"><b>Opciones</b></div></td>
  </tr>
  
  <?php echo $Tra->listardocumentod($_POST['id'],$path_ver_documentos.$_SESSION['consecutivo']."/",$_SESSION['usu_per_id']) ?>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
	<td>&nbsp;</td>
  </tr>
</table>
<?php }  ?>
</div>