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
#tabcontent1,#tabcontent2,#tabcontent3,#tabcontent4,#tabcontent5,#tabcontent6 
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
<li><a href="#" onmouseover="easytabs('1', '1');" onfocus="easytabs('1', '1');" onclick="return false;"  title="" id="tablink1">Tr&aacute;mite</a></li>
<li><a href="#" onmouseover="easytabs('1', '2');" onfocus="easytabs('1', '2');" onclick="return false;"  title="" id="tablink2">Documento</a></li>
<li><a href="#" onmouseover="easytabs('1', '3');" onfocus="easytabs('1', '3');" onclick="return false;"  title="" id="tablink3">Cargar Documento</a></li>
<li><a href="#" onmouseover="easytabs('1', '4');" onfocus="easytabs('1', '4');" onclick="return false;"  title="" id="tablink4">Observaciones</a></li>
<li><a href="#" onmouseover="easytabs('1', '5');" onfocus="easytabs('1', '5');" onclick="return false;"  title="" id="tablink5">Mis tramites</a></li>
<li><a href="#" onmouseover="easytabs('1', '6');" onfocus="easytabs('1', '6');" onclick="return false;"  title="" id="tablink6">Consulta</a></li>
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
<div id="tabcontent5"><?php require_once("mistramites.php"); ?></div>
<!--End Tabcontent 5-->

<!--Start Tabcontent 6-->
<div id="tabcontent6">
<form name="frmbustra" method="POST" action="aplicacion.php">
<table width="800" border="0">
  <tr>
    <td width="241">&nbsp;</td>
    <td width="144">&nbsp;</td>
    <td width="201">&nbsp;</td>
  </tr>
  <tr>
    <td class="tit_boboazul">Consecutivo Tr&aacute;mite</td>
    <td><input type="text" name="codigotra" id="codigotra" class="texto_bobo" style="text-transform:uppercase;" required value="<?=$_SESSION['consecutivo']?>"/></td>
    <td><input type="submit" name="button" class="bot" value="Enviar"  /></td>
  </tr>
  <tr><td colspan="3" style=" padding-bottom:40px; padding-top:20px;"><p class="texto_bobo">Por favor, ingrese el Consecutivo del Tr&aacute;mite para buscar sus datos.</p></td></tr>

  <td colspan="3">&nbsp;</td>
</table><input type="hidden" name="n" value="47"></form></div>
<!--End Tabcontent 6-->

