<?php
   require_once("conf/clave.php");
   //print_r($_GET);
   /*Script borrado logico del administrador en la configuracion*/
   $Gen->delete_registro($_GET['campo_id'],$_GET['v_id'],$_GET['tabla'],$_GET['campo_estado']);
   $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Borro registro tabla ".$_GET['tabla']." id: ".$_GET['v_id']);
?>
<script>alert("Registro eliminado con exito");</script>
<form name="frm" method="POST" action="aplicacion.php">
<input type="hidden" name="n" value="3">
<?php if($_GET['tablapadre']!=""){ 
      $_GET['tabla'] = $_GET['tablapadre'];
?>
<input type="hidden" name="mio" value="31">
<?php } else {?>
<input type="hidden" name="mio" value="35">
<?php } ?>
<input type="text" name="tablaoriginal" value="<?=$_GET['tabla']?>">
<input type="text" name="idaxm" value="<?=$Tra->idaxmenuid($_GET['tabla'])?>">
<input type="text" name="submenu" value="<?=$_GET['submenu']?>">
<input type="text" name="camposub" value="<?=$_GET['camposub']?>">
<input type="text" name="tablapadre" value="<?=$_GET['tablapadre']?>">
<input type="text" name="v_id" value="<?=$_GET['idpadre']?>">
</form>
<script>document.frm.submit();</script>
<? exit;?>