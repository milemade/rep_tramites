<?
     if(isset($_POST['bantra']) && $_POST['bantra']==1)
	 {
	     if(isset($_POST['msg']))
		    unset($_POST['msg']);
	     if(isset($_POST['iddoc']))
		    unset($_POST['iddoc']);
	 }
	 if($_POST['msg']!="")
	     echo "<script>alert('".$_POST['msg']."')</script>";

?>
<style>
 .textousu {
	position:relative;
	top:0px;
	width:100%;
	height:auto;
	border:#FFF 1px solid;
	margin-top:10px;
	text-align:justify;
	font-size:12px;
	padding:10px;
	background-color:#d4d4d4;
	opacity: 0.7;
 	-moz-opacity: 0.7;
 	filter:alpha(opacity=70);
	}
</style>
<div id="barra">
<a href="#" class="tramites">TRAMITES</a>
<a href="logout.php"></a>
<a href="aplicacion.php?n=1" class="volver"></a>
</div>
<div align="center">
<!--aqui se escribe-->
<?php 
   if($_SESSION['usu_per_id']<5)
      require_once("tabstramites.php");
   else	
      require_once("tabstramitesexternos.php");
	  ?>
<!--finnnnn-->
<br class="clear" />
  <p class="textousu">
  <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM ".$t_textos." WHERE txt_pagina='tramites' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
  </p>
<br class="clear" />
</div>
<br class="clear" />
