<? require_once("conf/clave.php");
   if(isset($_POST['n']) && $_POST['n']>0)
        $n = $_POST['n'];
   //print_r($_POST);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?=$nombre_aplicacion?></title>
<link rel="stylesheet" media="all" type="text/css" href="tabbed_pages/interna_pages.css" />
</head>
<body>

<div id="cuerpo_int">

<div class="logo">
<img src="imagenes/logo_centro_int.png" alt="" width="428" height="117" class="left" />
<div id="usuario"><h2 class="txt_azul">Perengano José</h2></div>
<br class="clear" />
</div>
<div id="barra">
<a href="#"></a>
</div>


<!--/*///////////////////////////////////////////////////*/-->
<div id="centro">
<!--/*/////////////////aca va el contenido en php//////////////////////////////////*/-->
<? if($n==1) {?>
<?php require_once("menu.php"); ?>
<? } ?>
<? if($n==11) {?>
<?php require_once("registrese.php"); ?>
<? } ?>
<? if($n==12) {?>
<?php require_once("olvidopassword.php"); ?>
<? } ?>

</div>


<!--/*//////////////////////estos son los botones fijo NO 
LES HAGA NADA POR FAVOR nunca!!!!!!!!///////////////////////*/-->
<div class="btn_alianza"><a href="#"><img src="tabbed_pages/grupo_alianza.png" alt="" width="150" height="54" /></a></div>
<div class="btn"><a href="#"><img src="tabbed_pages/masterrobots.png" alt="" width="100" height="48" /></a></div>

<!--/*//////////////////////este div no puede faltar nunca///////////////////////*/-->
</div>
</body>
</html>
