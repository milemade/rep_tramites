<style type="text/css">
<!--
.selb {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	//font-weight: bolder;
}
-->
</style>
<form method="post" action="aplicacion.php">
<table>
<tr><td><input type="text" name="busqueda" id="busqueda" required value="<?php if(isset($_POST['busqueda'])) echo $_POST['busqueda']?>"></td>
    <td><select name="cond" id="cond" class="selb">
	  <option value="0">[Seleccione]</option>
	  <? if($_POST['cond']=="a.txt_nombre")
	        $sel1 = "selected"; 
		 else
		    unset($sel1);?>
	  <option value="a.txt_nombre" <?=$sel1?>>Nombre Tramite</option>
	  	  <? if($_POST['cond']=="d.txf_nombre")
	        $sel4 = "selected"; 
		 else
		    unset($sel4);?>
	  <option value="d.txf_nombre" <?=$sel4?>>Frecuencia Tramites</option>
	  <? if($_POST['cond']=="a.txt_tmaximo")
	        $sel5 = "selected"; 
		 else
		    unset($sel5);?>
	  <option value="a.txt_tmaximo" <?=$sel5?>>Duracion Tramite Dias</option></select>
	  </td>
	  <td><input type="submit" value="Enviar" class="bot"></td></tr>
</table>
<input type="hidden" name="n" value="3">
<input type="hidden" name="mio" value="35">
<input type="hidden" name="tablaoriginal" value="<?=$tablaoriginal?>">
</form>