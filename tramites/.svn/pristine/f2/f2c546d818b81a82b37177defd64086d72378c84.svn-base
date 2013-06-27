
<script language="javascript" type="text/javascript"> /* Abrimos etiqueta de código Javascript */
    /* Partimos por definir una variable llamada posicionCampo. Esta variable servirá como índices para marcar cuantos campos se han agregado dinámicamente. La inicializamos en 1, ya que la primera llamada ocurrirá cuando no hayan campos agregados */
    var posicionCampo=1;
    /* Declaramos la función agregarUsuario( ) */
    function agregarAlumno(){
    /* Declaramos una variable llamada nuevaFila y a ella le asignamos la recuperación del elemento HTML designado por el id tablaUsuarios. En este caso, la tabla en la que manejamos los campos dinámicamente y llamamos a la función insertRow para agregar una fila */
    nuevaFila = document.getElementById("tablaAlumno").insertRow(-1);
    /* Asignamos a la propiedad id de nuevaFila el valor de posicionCampo, que inicializamos en 1 */
    nuevaFila.id=posicionCampo;
    /* Luego en otra variable llamada nuevaCelda, agregaremos una celda a la tabla, mediante la función insertCell */
   
   
  nuevaCelda=nuevaFila.insertCell(-1);
    /* Con la celda creada, insertamos dinámicamente un campo de texto, el cual almacenaremos en un array llamado nombre, 
	con una posición equivalente a la variable posicionCampo. Una vez terminado, repetimos la acción para el sitio Web y correo, 
	asignando al array respectivo */
    //nuevaCelda.innerHTML=" <form id='form1["+posicionCampo+"]' name='form1["+posicionCampo+"]' method='post' action=''><td> <input type='text' size='30' name='nombre["+posicionCampo+"]' ></td>";
	nuevaCelda.innerHTML=" <td><input type='text' class='car' name='nombre_"+posicionCampo+"' ></td>";
    nuevaCelda=nuevaFila.insertCell(-1);
    nuevaCelda.innerHTML="<td> <input type='file' class='file' name='file_"+posicionCampo+"' ></td>";
    nuevaCelda=nuevaFila.insertCell(-1);
    nuevaCelda.innerHTML="<td> <textarea class='car' name='comen_"+posicionCampo+"'></textarea></td>";
    /* Finalmente añadimos una última celda para las acciones y ahí agregamos un botón llamado Eliminar, el cual al ser presionado (definiendo la propiedad onClick), llamará a una función eliminarUsuario, pasando como parámetro la fila correspondiente */
   
    nuevaCelda=nuevaFila.insertCell(-1);
    //nuevaCelda.innerHTML="<td> <input type='submit' name='enviar' id='enviar' value='Enviar' > </td>";
    nuevaCelda=nuevaFila.insertCell(-1);
    //nuevaCelda.innerHTML=" <td> <input type='button' value='Eliminar' onclick='eliminarUsuario(this)'> </td>    </form> ";
	nuevaCelda.innerHTML=" <td> <input type='button' value='-' onclick='eliminarUsuario(this)' style='font-size:20px; width:24px; height:24px;font-family: Geneva, Arial, Helvetica, sans-serif;color: #16628F;border-top-color: #16628F;border-right-color: #16628F;border-bottom-color: #16628F;border-left-color: #16628F;'> </td>";
      
    /* Incrementamos el valor de posicionCampo para que empiece a contar de la fila siguiente */
    posicionCampo++;
    }
    /* Definimos la función eliminarUsuario, la cual se encargará de quitar la fila completa del formulario. No es necesario hacer modificaciones sobre este código */
    function eliminarUsuario(obj){
    var oTr = obj;
    while(oTr.nodeName.toLowerCase()!='tr'){
    oTr=oTr.parentNode;
    }
    var root = oTr.parentNode;
    root.removeChild(oTr);
    }
    /* Cerramos el código Javascript */
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
<link href="jquery.si.css" rel="stylesheet" type="text/css" />

<div id="loginPan_vtres">
<div class="cabecera">Carga Documentos Consecutivo <?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
<div align="right">
  <input type="button" class="maas" value="+" onClick="agregarAlumno()" />
</div>
<form name="frmcargadoc" action="aplicacion.php" method="post" enctype="multipart/form-data">
  <table border="0">
  <tbody id="tablaAlumno"> 
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