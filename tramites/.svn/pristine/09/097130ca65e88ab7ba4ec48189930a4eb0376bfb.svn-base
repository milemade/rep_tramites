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
  cant.className = 'car';  
  celda.appendChild(cant); 
   
  
  celda = document.createElement('td'); 
  fila.appendChild(celda);       
  comen=document.createElement('textarea'); 
  comen.name='comen_'+n; 
  comen.className = 'car';
  celda.appendChild(comen); 
  pepe.appendChild(fila);
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
<div class="cabecera">Carga Documentos Consecutivo <?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
<div align="right">
  <input type="button" class="maas" value="+" onclick="add()" />
</div>
<form name="frmcargadoc" action="aplicacion.php" method="post" enctype="multipart/form-data">
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
</form>
 <br class="clear" />
 
<div class="cabecera">Documentos Consecutivo <?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
<form name="frm" action="aplicacion.php" method="post">

 <table width="573" border="0" align="center">
   <tr><td><?php 
   
   if(is_dir($path_documentos.$_POST['consecutivo']))
	if ($gestor = opendir($path_documentos.$_POST['consecutivo'])) {
		echo "<ul>";
	    while (false !== ($arch = readdir($gestor))) {
		   if ($arch != "." && $arch != "..") {
			   echo "<li><a href=\"files/".$arch."\" class=\"linkli\">".$arch."</a></li>\n";
		   }
	    }
	    closedir($gestor);
		echo "</ul>";
	}
	?>	</td></tr>
      <tr>
        <td width="66"><label>Documento</label></td>
        <td width="113"><a href=""><img src="imagenes/ver.png"></a></td>
      </tr>
	  
    </table>
</div>