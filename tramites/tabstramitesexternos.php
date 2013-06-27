<script>
/*
EASY TABS 1.2 Produced and Copyright by Koller Juergen
www.kollermedia.at | www.austria-media.at
Need Help? http:/www.kollermedia.at/archive/2007/07/10/easy-tabs-12-now-with-autochange
You can use this Script for private and commercial Projects, but just leave the two credit lines, thank you.
*/

//EASY TABS 1.2 - MENU SETTINGS
//Set the id names of your tablink (without a number at the end)
var tablink_idname = new Array("tablink")
//Set the id name of your tabcontentarea (without a number at the end)
var tabcontent_idname = new Array("tabcontent") 
//Set the number of your tabs
var tabcount = new Array("5")
//Set the Tab wich should load at start (In this Example:Tab 2 visible on load)
var loadtabs = new Array("1")  
//Set the Number of the Menu which should autochange (if you dont't want to have a change menu set it to 0)
var autochangemenu = 0;
//the speed in seconds when the tabs should change
var changespeed =3;
//should the autochange stop if the user hover over a tab from the autochangemenu? 0=no 1=yes
var stoponhover = 0;
//END MENU SETTINGS

/*Swich EasyTabs Functions - no need to edit something here*/
function easytabsex(menunr, active) 
{
  if (menunr == autochangemenu){currenttab=active;}
  if ((menunr == autochangemenu)&&(stoponhover==1)) {stop_autochange()} 
  else if ((menunr == autochangemenu)&&(stoponhover==0))  {counter=0;}menunr = menunr-1;
  for (i=1; i <= tabcount[menunr]; i++)
  {document.getElementById(tablink_idname[menunr]+i).className='tab'+i;document.getElementById(tabcontent_idname[menunr]+i).style.display = 'none';}
  document.getElementById(tablink_idname[menunr]+active).className='tab'+active+' tabactive';document.getElementById(tabcontent_idname[menunr]+active).style.display = 'block';}var timer; counter=0; var totaltabs=tabcount[autochangemenu-1];var currenttab=loadtabs[autochangemenu-1];function start_autochange(){counter=counter+1;timer=setTimeout("start_autochange()",1000);if (counter == changespeed+1) {currenttab++;if (currenttab>totaltabs) {currenttab=1}easytabs(autochangemenu,currenttab);restart_autochange();}}function restart_autochange(){clearTimeout(timer);counter=0;start_autochange();}
  function stop_autochange(){clearTimeout(timer);counter=0;}

window.onload=function(){
var menucount=loadtabs.length; 
var a = 0; 
var b = 1; 
do {easytabs(b, loadtabs[a]);  a++; b++;}
while (b<=menucount);
if (autochangemenu!=0){start_autochange();}
}
</script>
<?
//CREAR TRAMITE
 if(isset($_POST['id']) && $_POST['id']>0)
     {   //Si existe id del tramite crea las variables de session
	     $p = $Tra->GetDatosTramite($_POST['id']);
		 $_SESSION['consecutivo'] = $p[0];
		 $_SESSION['departamento'] = $p[1];
		 $_SESSION['ciudad'] = $p[2];  
		 $nn = 42;
		// print_r($_SESSION);
		 
     }
	 else
	 {   //Si no existe destruye las variables de session
	     unset($_SESSION['consecutivo']);
	     unset($_SESSION['departamento']);
	     unset($_SESSION['ciudad']);  
		 $nn = 41;
	 }
	 //CREAR TRAMITE
	 ?>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Easy Tabs 1.2 - presented by Kollermedia.at</title>
<style>

/*Example for a Menu Style*/
.menu {background: url(images-tabs/fondo.png) repeat-x #ececec; border-bottom:1px solid #d7d7d7; height:23px;width:940px;}
.menu ul {margin:0px; padding:0px; list-style:none; text-align:center;}
.menu li {display:inline; line-height:23px;}
.menu li a {color:#fff; text-decoration:none; padding:4px 5px 6px 5px; border-right:1px solid #ececec;}
.menu li a.tabactive {background:url(images-tabs/fondo-1.png) left top repeat-x #CCCCCC;  position:relative; font-weight: bolder; font-size: 14px;}
#tabcontent1,#tabcontent2,#tabcontent3,#tabcontent4,#tabcontent5
{border:1px solid #064881; width:920px; text-align:justify;padding:10px; font-size:12px; margin-bottom:5px;}
</style>
<style type="text/css">
<!--
.style2 {
	font-size: 24px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #333366;
	font-weight: bold;
}
-->
</style>

<script>
function validartexto()
{
   if(document.frmbustra.codigotra.value=="")
   { 
      alert("Debe ingresar el consecutivo del tramite.");
	  document.frmbustra.codigotra.focus();
	  return false;
   }
}
</script>
<?php 
     //print_r($_SESSION);
      if(!isset($_SESSION['consecutivo'])) { 
        $bb = 1;
	 }
      if(isset($_SESSION['consecutivo'])) 
	  {
	     $bb = 2;
	  }
     ?>
<!--Start of the Tabmenu1 -->
<div class="menu">
<ul>
<li><a href="#" onmouseover="easytabsex('1', '1');" onfocus="easytabsex('1', '1');" onclick="return false;"  title="" id="tablink1">Crear</a></li>
<li><a href="#" onmouseover="easytabsex('1', '2');" onfocus="easytabsex('1', '2');" onclick="return false;"  title="" id="tablink2">Agregar Documento</a></li>
<li><a href="#" onmouseover="easytabsex('1', '3');" onfocus="easytabsex('1', '3');" onclick="return false;"  title="" id="tablink3">Cargar Documento</a></li>
<li><a href="#" onmouseover="easytabsex('1', '4');" onfocus="easytabsex('1', '4');" onclick="return false;"  title="" id="tablink4">Observaciones</a></li>
<li><a href="#" onmouseover="easytabsex('1', '5');" onfocus="easytabsex('1', '5');" onclick="return false;"  title="" id="tablink5">Consulta</a></li>
</ul>
</div>
<!--End of the Tabmenu1 -->


<!--Start Tabcontent 1 -->
<div id="tabcontent1"><?php require_once("crear_tramitee.php");?></div>
<!--End Tabcontent 1-->

<!--Start Tabcontent 2-->
<div id="tabcontent2"><?php if($bb==2) require_once("agregar_documento.php"); else echo '<table width="500" border="0">
  <tr>
    <td><div align="center">
      <pre class="style2">Debe Guardar o Consultar un tr&aacute;mite</pre>
    </div></td>
  </tr>
</table>';?></div>
<!--End Tabcontent 2 -->

<!--Start Tabcontent 3-->
<div id="tabcontent3"><?php if($bb==2) require_once("cargar_documento.php"); else echo '<table width="500" border="0">
  <tr>
    <td><div align="center">
      <pre class="style2">Debe Guardar o Consultar un tr&aacute;mite</pre>
    </div></td>
  </tr>
</table>';?></div>
<!--End Tabcontent 3-->

<!--Start Tabcontent 4-->
<div id="tabcontent4"><?php if($bb==2) require_once("agregar_observaciones.php"); else echo '<table width="500" border="0">
  <tr>
    <td><div align="center">
      <pre class="style2">Debe Guardar o Consultar un tr&aacute;mite</pre>
    </div></td>
  </tr>
</table>';?></div>
<!--End Tabcontent 4-->



<!--Start Tabcontent 5-->
<div id="tabcontent5">
<form name="frmbustra" method="POST" action="aplicacion.php">
<table width="800" border="0">
  <tr>
    <td width="241">&nbsp;</td>
    <td width="144">&nbsp;</td>
    <td width="201">&nbsp;</td>
  </tr>
  <tr>
    <td class="tit_boboazul">Consecutivo Tr&aacute;mite</td>
    <td><input type="text" name="codigotra" id="codigotra" style="text-transform:uppercase; font-family:Verdana, Arial, Helvetica, sans-serif" required /></td>
    <td><input type="submit" name="button" class="bot" value="Enviar"  /></td>
  </tr>
  <tr><td colspan="3" style=" padding-bottom:40px; padding-top:20px;"><p class="texto_bobo">Por favor, ingrese el Consecutivo del Tr&aacute;mite para buscar sus datos.</p></td></tr>

  <td colspan="3">&nbsp;</td>
</table><input type="hidden" name="n" value="47"></form></div>
<!--End Tabcontent 5-->

