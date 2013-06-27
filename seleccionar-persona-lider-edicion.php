<? require_once("conf/clave.php");
   if($_POST['lider']>0)
   {
      $ssql = "UPDATE usuario SET usu_car_lider=".$_POST['lider']." WHERE usu_id=".$_GET['idt'].";";
      $num = $Gen->execdata($ssql);
	  if($num==1){
	  $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Cambio cargo lider usuario a ".$_GET['corto']);
	  ?>
	  <form name="forr" action="aplicacion.php" method="POST" target="top">
	  <input type="text" name="n" value="5">
	  <input type="text" name="user" value="<?=$_GET['idt']?>">
	  </form>
	  <script> document.forr.submit();
	   if (window.opener && !window.opener.closed)
	   {
			  
			  window.opener.location.href = "aplicacion.php?n=5";
			  window.close(); 
       }			  
 </script>
	  <? exit;} ?>
<?php   }
?>
<script language="javascript" type="text/javascript" src="kalendar/jquery-1.7.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#sedeempr").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#deptoo").html(data);})
	});
	$("#deptoo").change(function(){
		$.post("combos/carga_select5.php",{ id:$(this).val() },function(data){$("#lider").html(data);})
	});
})
</script>
<script>
function poned(pref){
  var w = window.opener; //Ventana padre
  w.usu_llider.value = pref ; 
  alert(pref);
  window.close();
}
</script>	  
<link rel="stylesheet" type="text/css" href="tabbed_pages/interna_pages.css" />
<div id="loginPan_vcuatro">
<form name="formed" action="" method="post">
<table width="680" border="0">
<tr>
    <td><label>Sede Empresa</label></td>
    <td><?php $PSql = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
	    echo $Gen->ComboBox($PSql,"sede_id","sede_nombre","sedeempr")?></td>
  </tr><tr>
    <td><label>Departamento</label></td>
    <td><select name="deptoo" id="deptoo" >
        <option selected value="0">SELECCIONE</option>
	</select></td>
  </tr>
  <tr>
    <td><label>Cargo - Usuario</label></td>
    <td><select name="lider" id="lider">
        <option selected value="0">SELECCIONE</option>
	</select></td>
  </tr>
 </table>
 <br class="clear" />
<div align="center">
<input name="enviar" type="submit" class="button" value="Guardar"/></div>
</form>
</div>