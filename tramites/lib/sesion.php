<?
//error_reporting("E_ERROR");
/*header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");*/
@session_start();

if(!isset($_GET["idioma"]) && !$_SESSION["idioma"])
 {
  $_SESSION["idioma"] = 1 ;
 }
 else
 {
   if(isset($_GET["idioma"]))
   {
	$_SESSION["idioma"] = $_GET["idioma"];
   }
 }
 $ruta_fisica = "C:/AppServ/www/confraternidad";
 //$ruta_fisica = "/home/fundfrat/public_html";
 include $ruta_fisica."/conf/clave.php";
?>
