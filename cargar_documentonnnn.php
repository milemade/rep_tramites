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
  code.name='cod_'+n; 
  code.class = 'car';
  celda.appendChild(code); 
   
  celda = document.createElement('td'); 
  fila.appendChild(celda);       
  cant=document.createElement('input'); 
  cant.type='file'; 
  cant.name='file_'+n; 
  cant.class = 'car';  
  celda.appendChild(cant); 
   
  
  celda = document.createElement('td'); 
  fila.appendChild(celda);       
  comen=document.createElement('textarea'); 
  comen.name='comen_'+n; 
  comen..class = 'car';
  celda.appendChild(comen); 
  pepe.appendChild(fila);
} 
</script> 
<div id="loginPan_vtres">
<div class="cabecera">Carga Documentos Consecutivo <?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
<form name="frmcargadoc" action="aplicacion.php" method="post" enctype="multipart/form-data">
  <table id="dataTable">
    <tr>
	  <td width="144"><div align="center"><strong>Nombre Archivo</strong></div></td>
      <td width="218"><div align="center"><strong>Archivo</strong></div></td>
      <td width="161"><div align="center"><strong>Observaciones</strong></div></td>
      <td width="50">&nbsp;</td>
    </tr>
    <tr>
	  <td><input type="text" class="car" name="nombrearch[]" /></td>
      <td><input type="file" class="car" name="arch[]" /></td>
      <td><textarea name="textarea" class="car"></textarea></td>
      <td><div align="center">
        <input type="button" class="mas" name="button" id="button" value="+"/>
      </div></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </table>
  <div align="center">
<input name="limpiar" type="reset" class="button" value="Limpiar" />
<input name="enviar" type="submit" class="button" value="Guardar"/></div>
</form>
 <br class="clear" />
 
<div class="cabecera">Documentos Consecutivo <?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
<form name="frm" action="aplicacion.php" method="post">
 <table width="573" border="0" align="center">
      <tr>
        <td width="66"><label>Documento</label></td>
        <td width="113"><a href=""><img src="imagenes/ver.png"></a></td>
      </tr>
	  <tr>
        <td>Anexo1</td>
        <td><img src="imagenes/ver.png"></td>
	  </tr>
	  <tr>
        <td>Anexo2</td>
        <td><img src="imagenes/ver.png"></td>
	  </tr>
    </table>
</div>