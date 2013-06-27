<?php require_once("conf/clave.php"); 
      if(isset($_POST['n']) && $_POST['n']=="NO")
	     echo "<script>alert('Datos inconsistentes...');</script>";
      if(isset($_POST['n']) && $_POST['n']==99)
	     echo "<script>alert('::Usuario Activo::');</script>";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<script src="js/md5-min.js"></script>
<script>
function validaringreso()
{
     if(document.frmingreso.usuariotramite.value=="")
     {
         alert("Debe ingresar su nombre de usuario!");
	        document.frmingreso.usuariotramite.focus();
	        return false;
     }
     if(document.frmingreso.pass.value=="")
     {
         alert("Debe ingresar su password!");
	        document.frmingreso.pass.focus();
	        return false;
     }
     else
     {   
         calcMD5();
	       document.frmingreso.submit();
	       return true;
     }
}
</script>
<script language="javascript" type="text/javascript">
var mytext = document.getElementById("usuariotramite");
mytext.focus();
</script>
    
 <script type="text/javascript">
    function calcMD5(){
    document.getElementById('md5string').value = hex_md5(document.getElementById('string').value);
    }
    </script>
 <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery.betterTooltip.js"></script>
<link href='imagenes/loguito.png' rel='shortcut icon' type='image/x-icon'/>
<link href='imagenes/loguito.png' rel='icon' type='image/x-icon'/> 
<link href="tools.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="all" type="text/css" href="tabbed_pages/tabbed_pages.css" />
<script src="tabbed_pages/tabbed_pages.js" type="text/javascript"></script>
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
top:2em; left:2em; /* donde va a estar */
width:300px; /* el ancho por defecto que va a tener */
padding:5px; /* la separacion entre el contenido y los bordes */
background-color: #0080C0; /* el color de fondo por defecto */
color: #FFFFFF; /* el color de los textos por defecto */
}
</style>
</head>

<body>
<div id="cuerpo">
<div class="logo">
<a href="index.php"><img src="imagenes/logo_centro2.png" alt="" width="458" height="207" /></a></div>


<div class="galeria">
<div id="gallery">
<div class="off" title="Ingreso_Usuario"><span>INGRESE</span></div>
<div class="on" title="Busqueda_Tramite"><span>SEGUIMIENTO DEL TRAMITE</span></div>
</div>

<div id="Ingreso_Usuario" class="hide">
<!--<img src="tabbed_pages/bombillo.jpg" alt="" width="114" height="200"  />-->
<div id="loginPan">
<form name="frmingreso" action="validar.php" method="post">
<div class="tTip" id="cloud1"><a class=Ntooltip href="#">
     <img src="tabbed_pages/tool.png" alt="" width="40" height="33" />
<span>
     <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='index1' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</span></a></div>
 		<!--<label>Ingrese el Código:</label>
      <input name="email" type="text" id="email" />-->
      <table width="290" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><label>Usuario:</label></td>
    <td><input name="usuariotramite" id="usuariotramite" type="text" /></td>
  </tr>
  <tr> 
    <td> <label>Contrase&ntilde;a:</label></td>
    <td><input name="pass" id="string" type="password" maxlength="8" /><input name="passi" id="md5string" type="hidden" maxlength="8" /></td>
  </tr>
  </table>
<input name="Input" type="button" class="button" value="Entrar" onclick="validaringreso();"/>
<input name="Input" type="reset" class="button" value="Limpiar"/>
<input type="hidden" name="n" value="1">
		</form>
		
         <ul>
	 <li><a href="aplicacionindex.php?n=12">Olvid&oacute; su contrase&ntilde;a?</a></li>
	<li><a href="aplicacionindex.php?n=11">Si a&uacute;n no se ha Registrado h&aacute;galo ACA!</a></li>
	</ul>
<br class="clear" /></div>
<br class="clear" />
</div>
<script>
function ver()
{
      if(document.frmbuscar.numtramite.value=="")
      {   
         alert("Debes ingresar un el número de trámite a buscar.");
	 document.frmbuscar.numtramite.focus();
	 return false;
      }
      else
      {
         document.frmbuscar.submit();
      }
}
function ubicarfoco()
{
    document.frmbuscar.numtramite.focus();
}
</script>
<div id="Busqueda_Tramite" class="show"> 
<!--<img src="tabbed_pages/codigo.jpg" alt="" width="114" height="200"  />-->
<div id="loginPan">
<form name="frmbuscar" action="aplicacion.php" method="post">
    <div class="tTip" id="cloud1"><a class=Ntooltip href="#">
     <img src="tabbed_pages/tool.png" alt="" width="40" height="33" />
<span>
      <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='index2' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</span></a></div>
          <label class="codigo">Ingrese ACA el c&oacute;digo:</label>
          <input name="numtramite" type="text" id="numtramite" class="codigo" onclick="this.value="";" style="text-transform:uppercase"/>
          <input name="enviar" type="button" class="button" value="VER" onclick="ver();"/>
	      <input type="hidden" name="n" value="2">
		</form>
         <ul>
			<li><a href="#" onclick="ubicarfoco();">INGRESE EL NUMERO DE TRAMITE</a> </li>
		</ul>
<br class="clear" /></div>
</div>

<h4><?=$pieaplicacion?></h4>
</div>

</div>
<div class="btn"><a href="http://www.master-robots.com" target="_blank"><img src="tabbed_pages/masterrobots.png" alt="" width="100" height="48" /></a></div>
</body>
</html>
