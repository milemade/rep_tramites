<?php
     require_once("conf/clave.php");
     if($_SESSION['autentificado']=="SI")
     {
          $db = new Database();
	  $sql = "UPDATE usu_log SET uxl_activo=0 WHERE uxl_usu_id=".$_SESSION['usu_id'];
	  $db->query($sql);
	  for($i=0;$i<count($_SESSION);$i++)
	  {
	     unset($_SESSION[$i]);
	  }
	  session_destroy();
	  
     }
?>
<form name="frm" action="index.php" method="POST">
<input type="hidden" name="nino" value="0">
</form>
<script>document.frm.submit();</script>
<?php exit; ?>

