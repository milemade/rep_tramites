<?php //require_once("conf/clave.php"); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?=$nombre_aplicacion?></title>
<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery.betterTooltip.js"></script>
<link href='imagenes/loguito.png' rel='shortcut icon' type='image/x-icon'/>
<link href='imagenes/loguito.png' rel='icon' type='image/x-icon'/> 
<link href="tools.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="all" type="text/css" href="tabbed_pages/tabbed_pages.css" />
<script src="tabbed_pages/tabbed_pages.js" type="text/javascript"></script>
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
         document.frmingreso.submit();
	 return true;
     }
}
</script>
    
<script type="text/javascript">
		$(document).ready(function(){
			$('.tTip').betterTooltip({speed: 150, delay: 300});
		});
	</script>
    

</head>

<body>
<div id="cuerpo">
<div class="logo">
<img src="imagenes/logo_centro2.png" alt="" width="458" height="207" /></div>


<div class="galeria">
<div id="gallery">
<div class="on" title="Ingreso_Usuario"><span>INGRESE</span></div>
<div class="off" title="Busqueda_Tramite"><span>Seguimiento del Trámite</span></div>
</div>

<div id="Ingreso_Usuario" class="show">
<img src="tabbed_pages/bombillo.jpg" alt="" width="114" height="200"  />
<div id="loginPan">
<form name="frmingreso" action="validar.php" method="post">
<div class="tTip" id="cloud1" title="Ingrese su usuario y contraseña para poder ingresar a la aplicación."><img src="tabbed_pages/tool.png" alt="" width="40" height="33" /></div>
 		<!--<label>Ingrese el Código:</label>
      <input name="email" type="text" id="email" />-->
      <table width="290" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><label>Usuario:</label></td>
    <td><input name="usuariotramite" type="text" maxlength="8"/></td>
  </tr>
  <tr> 
    <td> <label>Contraseña:</label></td>
    <td><input name="pass" type="password" maxlength="8"/></td>
  </tr>
  </table>
<input name="Input" type="reset" class="button" value="Limpiar"/>
<input name="Input" type="button" class="button" value="Entrar" onclick="validaringreso();"/>
<input type="hidden" name="n" value="1">
		</form>
		
         <ul>
	 <li><a href="n.php?n=12">Olvidó su contraseña?</a></li>
	<li><a href="n.php?n=11">Si aún no se ha Registrado hágalo ACA!</a></li>
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
<div id="Busqueda_Tramite" class="hide"> 
<img src="tabbed_pages/codigo.jpg" alt="" width="114" height="200"  />
<div id="loginPan">
<form name="frmbuscar" action="aplicacion.php" method="post">
    <div class="tTip" id="cloud1" title="Aquí debe ingresar el número de trámite a consultar."><img src="tabbed_pages/tool.png" alt="" width="40" height="33" /></div>
          <label class="codigo">Ingrese ACA su código:</label>
          <input name="numtramite" type="text" id="numtramite" class="codigo" onclick="this.value="";"/>
          <input name="enviar" type="button" class="button" value="VER" onclick="ver();"/>
	  <input name="reset" type="reset" class="button" value="LIMPIAR"/>
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
