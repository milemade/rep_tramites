<?php 
   require_once("conf/clave.php"); 
   if(isset($_POST['n']) && $_POST['n']>0)
        $n = $_POST['n'];
   if(isset($_GET['n']) && $_GET['n']>0)
        $n = $_GET['n'];
   if(isset($_POST['mio']) && $_POST['mio']>0)
        $mio = $_POST['mio'];
   if(isset($_POST['b']) && $_POST['b']>0)
        $b = $_POST['b'];
   //print_r($_POST); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?=$nombre_aplicacion?></title>
<link rel="stylesheet" href="kalendar/kalendar.css" type="text/css" media="screen" />
<script language="javascript" type="text/javascript" src="kalendar/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="kalendar/jquery.kalendar.min.js"></script>
<script type="text/javascript" src="reveal/jquery.reveal.js"></script>
<script language="javascript" type="text/javascript">
	$(document).ready(function(){
		$(".test").kalendar();
	});
</script>

<link rel="stylesheet" media="all" type="text/css" href="tabbed_pages/interna_pages.css" />
<link rel="stylesheet" media="all" type="text/css" href="acordeon.css" />
<link rel="stylesheet" href="reveal/reveal.css">
<link href="tools.css" rel="stylesheet" type="text/css" />
<link href='imagenes/loguito.png' rel='shortcut icon' type='image/x-icon'/>
<link href='imagenes/loguito.png' rel='icon' type='image/x-icon'/> 
<SCRIPT LANGUAGE="JavaScript">
function validarnumero(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
    //patron =/[A-Za-z\s]/; // 4
    patron = /\d/; // Solo acepta n�meros
    //patron = /\w/; // Acepta n�meros y letras
    //patron = /\D/; // No acepta n�meros
    //patron =/[A-Za-z��\s]/; // igual que el ejemplo, pero acepta tambi�n las letras � y �
    //patron = /[ajt69]/;
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
} 
</script>
<style>
a.Ntooltip {
position: relative; /* es la posici�n normal */
text-decoration: none !important; /* forzar sin subrayado */
color:#0080C0 !important; /* forzar color del texto */
font-weight:normal !important; /* forzar negritas */
font-size: 12px;
}

a.Ntooltip:hover {
z-index:999 !important;  /* va a estar por encima de todo */
/*background-color:#fff !important;  DEBE haber un color de fondo */
}

a.Ntooltip span {
display: none; /* el elemento va a estar oculto */
}

a.Ntooltip:hover span {
display: table-caption; /* se fuerza a mostrar el bloque */
position: absolute; /* se fuerza a que se ubique en un lugar de la pantalla */
//top:2em; left:2em; /* donde va a estar */
width:450px; /* el ancho por defecto que va a tener */
padding:5px; /* la separaci�n entre el contenido y los bordes */
background-color: #0080C0; /* el color de fondo por defecto */
color: #FFFFFF; /* el color de los textos por defecto */
}
</style>
<script> function cambiarDisplay(id) {
  if (!document.getElementById) return false;
  fila = document.getElementById(id);
  if (fila.style.display != "none") {
    fila.style.display = "none"; //ocultar fila
  } else {
    fila.style.display = ""; //mostrar fila
  }
} </script>

</head>
<body>
<div id="cuerpo_int">

<div class="logo">

<a href="index.php"><img src="imagenes/logo_centro_int.png" alt="Centro de Soluciones" width="428" height="76" class="left" /></a>

<div id="usuario"><h2 class="txt_azul"><?php if($_SESSION['usu_nombre']!="" && $n!=11) echo $_SESSION['usu_nombre'];?></h2>
</div>

<br class="clear" />
</div>

<!--AQUI COMIENZA-->
<?php if($n==1) {

   require_once("menu.php");
}  
if($n==11) 
{
   require_once("registrese.php"); 
} 
if($n==111) 
{
   $Valores = "usu_nombre|S,usu_apel|S,usu_corto|S,usu_exc_id|N,usu_emailcor|S,usu_emailper|S,usu_dir|S,usu_fijo|S,usu_celular|S,usu_obs|S,usu_per_id|N,usu_cedula|S";
   $Gen->SetValores($Valores,"usuario"); 
   $Gen->AsignarDatos($_POST['usu_cedula'],$_POST['usu_emailcor'],$_POST['usu_emailper'],$mailadministrador);?>
   <script>alert('Gracias por su registro, Los Datos de Ingreso le seran enviados a los mail registrados.');</script>
   <form name="frm" action="index.php" method="post">
   <input type="hidden" name="n" value="0">
   </form>
   <script>document.frm.submit();</script>
<? exit; } 

if($n==12) {
    require_once("olvidopassword.php"); 
} ?>
<?php
   if($n==121)
   {
        require_once("enviopassword.php");
   }
?>
<?php
   if($n==2)
   {
       require_once("buscartramite.php");
   }
?>
<?php
   if($n==3)
   { 
      require_once("configuracion.php");
	  //require_once("cargar/index.html");
   }
?>

<?php
   if($n==4)
   { 
      require_once("tramites.php");
   }
?>
<?php
  if($n==41)
  { //GUARDA EL TRAMITE
         
  }
?>
<?php
  if($n==51)
  { //Nuevos Usuarios
     $campos = "usu_nombre|S,usu_apel|S,usu_corto|S,usu_cedula|S,usu_car_id|N,usu_emailcor|S,usu_emailper|S,usu_fijo|S,";
     $campos .= "usu_celular|S,usu_dir|S,usu_obs|S,usu_act_id|S,usu_per_id|N";
     $Gen->SetValores($campos,"usuario");
     $Gen->AsignarDatos($_POST['usu_cedula'],$_POST['usu_emailcor'],$_POST['usu_emailper'],$mailadministrador);
     $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Ingresar Usuarios");
     ?>
     <form name="frmenv" action="aplicacion.php" method="POST">
     <input type="hidden" name="n" value="5">
     <input type="hidden" name="msg" value="Usuario ingresado con exito!">
     </form>
     <script>document.frmenv.submit();</script>
 <?php exit; }
?>
<?php
 if($n==52)
 { //Editar Usuarios
     $campos = "usu_nombre|S,usu_apel|S,usu_corto|S,usu_cedula|S,usu_car_id|N,usu_emailcor|S,usu_emailper|S,usu_fijo|S,";
     $campos .= "usu_celular|S,usu_dir|S,usu_obs|S,usu_act_id|S,usu_per_id|N";
     $Gen->SetDatos($campos,"usuario","usu_id=".$_POST['id']);
     $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Modificar Usuarios");
  ?>
     <form name="frmenv" action="aplicacion.php" method="POST">
     <input type="hidden" name="n" value="5">
     <input type="hidden" name="msg" value="Usuario modificado con exito!">
     </form>
     <script>document.frmenv.submit();</script>
 <?php exit; } ?>
 <?php
    if($n==53)
    {
         $Gen->borrarusuarios($_POST['id']);
	 $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Borrar Usuarios");
     ?>
     <form name="frmenv" action="aplicacion.php" method="POST">
     <input type="hidden" name="n" value="5">
     <input type="hidden" name="msg" value="Usuario Eliminado con exito!">
     </form>
     <script>document.frmenv.submit();</script>
 <?php exit; }
 ?>
<?php
   if($n==5)
   { 
      require_once("usuarios.php");
   }
?>

<?php
   if($n==6)
   { ?>
   <div id="barra">
<a href="#" class="tramites">ESTADISTICAS</a>
<a href="logout.php"></a>
<a href="aplicacion.php?n=1" class="volver"></a>
<br class="clear" />
</div>
<div id="centro">
  <?php    echo "NO TENGO IDEA COMO HACERLO...ESTOY EN PROCESO CREATIVO..."; ?>
  </div>
  <?php  }
?>
<!--AQUI TERMINA-->
<!--</div><!--TERMINA DIV CENTRO-->

<div class="btn_alianza"><a href="#"><img src="tabbed_pages/grupo_alianza.png" alt="" width="150" height="54" /></a></div>
<div class="btn"><a href="#"><img src="tabbed_pages/masterrobots.png" alt="" width="100" height="48" /></a></div>


</div>
</body>
</html>
