<?php
$fechaOld= $_SESSION["ultimoAcceso"];
$ahora = date("Y-n-j H:i:s");
$tiempo_transcurrido = (strtotime($ahora)-strtotime($fechaOld));
if($tiempo_transcurrido>= 1200) { //comparamos el tiempo y verificamos si pasaron 10 minutos o m�s1200
  $Gen->updatesql("UPDATE usu_log SET uxl_activo=0 WHERE uxl_usu_id=".$_SESSION['usu_id'].";");
  session_destroy(); // destruimos la sesi�n
  header("Location: index.php"); //enviamos al usuario a la p�gina principal
}else {       //sino, actualizo la fecha de la sesi�n
$_SESSION["ultimoAcceso"] = $ahora;
} ?>

