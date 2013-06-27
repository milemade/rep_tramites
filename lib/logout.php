<?
error_reporting("E_ERROR");
session_start();
session_unregister("cedula_asociado");
session_unregister("nombre_asociado");
session_unregister("tipo_asociado");
session_unregister("periodicida");
session_unregister("tipo_asociado_id");
session_unregister("autentificado");
session_unregister("sesionid");
session_unregister("pagina_origen");
session_destroy();
print "<script>window.location='../index.php';</script>";
exit;
?>
