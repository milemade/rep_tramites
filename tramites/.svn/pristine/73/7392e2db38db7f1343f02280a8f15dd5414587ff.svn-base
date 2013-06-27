<?
require_once("conf/clave.php");
$db = new Database();
$sql = "SELECT usu_id FROM usuario WHERE usu_user='".$_GET['corto']."';";
$db->query($sql);
$num_rows = $db->num_rows();
if($num_rows>0)
  $existe = 1;

?>
<form name="frm" action="usuarios_ingresar.php" method="POST">
<input type="hidden" name="existe" value="<?=$existe?>">
</form>
<script>document.frm.submit()</script>
<? exit;?>