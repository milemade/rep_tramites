<? //print_r($_POST);
   $campitos = $_POST['nombre_campos_tabla'];
   //echo "ESOS SON CAMPITOS".$campitos;
?>
<div id="barra">
<a href="n.php?n=3" class="titulo">CONFIGURACION</a>
<a href="logout.php"></a>
<a href="aplicacion.php?n=1" class="volver"></a>
<br class="clear" />
</div>
<script>
function eliminar(campo_id,tabla,id,campo_estado,idaxm,submenu,camposub,tablapadre,idpadre)
{
   if (confirm("Esta seguro que desea eliminar este registro"))
   {
		window.location="config_eliminar.php?campo_id="+campo_id+"&v_id="+id+"&tabla="+tabla+"&campo_estado="+campo_estado+"&idaxm="+idaxm+"&submenu="+submenu+"&camposub="+camposub+"&tablapadre="+tablapadre+"&idpadre="+idpadre;
   }
}
function ira(tabla,id,n)
{ 
	window.location="n.php?nombretabla="+tabla+"&id="+id+"&n="+3; 
}
</script>
<script type="text/javascript">
function ajaxFunction() {
  var xmlHttp;
  
  try {
   
    xmlHttp=new XMLHttpRequest();
    return xmlHttp;
  } catch (e) {
    
    try {
      xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
      return xmlHttp;
    } catch (e) {
      
	  try {
        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
        return xmlHttp;
      } catch (e) {
        alert("Tu navegador no soporta AJAX!");
        return false;
      }}}
}




function Enviar(_pagina,capa) {
    var ajax;
    ajax = ajaxFunction();
    ajax.open("POST", _pagina, true);
    ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    ajax.onreadystatechange = function() {
		if (ajax.readyState==1){
			document.getElementById(capa).innerHTML = " Aguarde por favor...";
			     }
		if (ajax.readyState == 4) {
		   
                document.getElementById(capa).innerHTML=ajax.responseText; 
		     }}
			 
	ajax.send(null);
} 
</script>

<style type="text/css">
img{border:none;}
a{color:#FFF; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-decoration:none;}
a:hover{text-decoration:none;}


#contenedor{width:950px;
margin: 0px auto;
overflow:hidden;
}
#loading{
 text-align:center; 
background:#6CBF19; 
color:#000; 
width:30%;
margin:0px auto;
  -moz-border-radius-bottomright:5px;
  -moz-border-radius-bottomleft:5px;
  -webkit-border-bottom-right-radius:5px;
  -webkit-border-bottom-left-radius:5px;

}
#loading2{
 text-align:center; 
background:#000000; 
color:#fff; 
width:30%;
margin:0px auto;
  -moz-border-radius-bottomright:5px;
  -moz-border-radius-bottomleft:5px;
  -webkit-border-bottom-right-radius:5px;
  -webkit-border-bottom-left-radius:5px;

}
#contenido{
float:right;
padding:5px;
width:600px;
//background:#F2F2F2;
}
#enlaces{float:left;}
#encabezado{
background:#999;
list-style:none;
  font-size:14px;
  text-align:center;
   color:#fff;
   }
ul{
margin-top:-10px;
width:150px;
padding:10px;
list-style:none;
} 
  
li{
padding:2px;
margin:3px 0px;
width:200px;
border:1px solid #27708B;
background:#365372;
text-transform:uppercase;
}
li:hover{background:#7ea3ca;}


span.test { direction: rtl; unicode-bidi:bidi-override; } 

li:first-child{
font:bold 15px Geneva,Georgia;
color:#FFF;
//background:#666666;
background:#7ea3ca;
text-transform:uppercase;
}
</style>
<div id="centro">
<div id="basic-accordian" ><!--Parent of the Accordion-->
<div style="width:410px;">
<ul id="enlaces">
<?php   
//print_r($_POST);
$dbm = new Database();
$sqlm = "SELECT a.axm_id, a.axm_nombre_tabla, a.axm_descripcion,a.axm_texto,a.axm_equipo
			FROM ".$tabla_admin_menu." a
			JOIN ".$tabla_admin_tablas." b ON a.axm_nombre_tabla = b.axt_nombre_tabla AND a.axm_ban=0
			JOIN ".$tabla_admin_permisos." c ON a.axm_nombre_tabla = c.aper_nombre_tabla
			GROUP BY a.axm_nombre_tabla ORDER BY a.axm_descripcion";
 //echo $sqlm;
$sqlm1 = $sqlm." LIMIT 0,1;";
$sqlm2 = $sqlm." LIMIT 1,30;";
$dbm->query($sqlm1);
$dbm->next_row();
?>
<script>
function cambiarcolor(id)
{
   //var contenedor = document.getElementById(id);
   //contenedor.style.backgroundColor="#7ea3ca";
   var contenedor = document.getElementById("enlaces");
   //alert(id);
   var lista = contenedor.getElementsByTagName("li");
   //alert(lista.length);
   for(var i=1; i<lista.length+1; ++i) {
       cont = document.getElementById(i);
       if(i==id)
       {
	  cont.style.backgroundColor="#7ea3ca";
       }
       else
       {
          cont.style.backgroundColor="";
       }
       //lista[i].style.backgroundColor = "#EEE";
   }
}
</script>
<li style="background:#7ea3ca" id="1"><a href="javascript:Enviar('admintablas1.php?tablaoriginal=<?=$dbm->axm_nombre_tabla?>','contenido')" title="<?=$Gen->limpiarCaracteresEspeciales($dbm->axm_texto)?>"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></a></li>
<?php
$dbm->close(); 
$dbm = new Database();
$sqlm2 = $sqlm." LIMIT 1,30;";
$dbm->query($sqlm2);
$b = 2;
while($dbm->next_row()){ 
if($_POST['idaxm'] == $dbm->axm_id)
	     $clase = "#7ea3ca" ;
	else
	     unset($clase);?>
<li style="background:<?=$clase?>" onclick="cambiarcolor(<?=$b?>)" id="<?=$b?>"><a href="javascript:Enviar('admintablas1.php?tablaoriginal=<?=$dbm->axm_nombre_tabla?>','contenido')" title="<?=$Gen->limpiarCaracteresEspeciales($dbm->axm_texto)?>"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></a></li>
    
<?php $b++;} ?>
</ul>
          
  </div> <!--FIN MENU LATERAL-->
<?php if(isset($_POST['b']) && $_POST['b']==1)
{  //Editar
    $campos = $_POST['nombre_campos_tabla'];
    $condicion = $_POST['campo_id']."=".$_POST['id_edi'];
    $Gen->SetDatos($campos,$_POST['nombretabla'],$condicion); //exit;
    $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Modifico tabla ".$_POST['nombretabla']." id:".$_POST['id_edi']);
    
    echo "<script>alert('Registro actualizado satisfactoriamente.');</script>"; 
	if($_POST['flag']==2)
	{ ?>
	<script>Enviar('editartabla.php?tablaoriginal=<?=$_POST['tablapadre']?>&paginasub=<?=$i?>&v_id=<?=$_POST['idpadre']?>&idaxm=<?=$_POST['idaxm']?>','contenido')</script>     
<?php	}
    if($_POST['flag']==1)
    { //echo "RECONOCE"; exit;
   ?>
  <script>Enviar('editartabla.php?tablaoriginal=<?=$_POST['tablapadre']?>&paginasub=<?=$i?>&v_id=<?=$_POST['idpadre']?>&idaxm=<?=$_POST['idaxm']?>','contenido')</script>  
<?php  }  
if(!$_POST['flag']) {
	?>
	<script>Enviar('admintablas1.php?tablaoriginal=<?=$_POST['nombretabla']?>','contenido')</script>
<? } ?>

<?php } ?>

<?php
if(isset($_POST['b']) && $_POST['b']==2) //Nuevos Registros************
{  //print_r($_POST);
    //echo "SONN".$Valores = $_POST['nombre_campos_tabla'];
	//echo "<BR>txt_dias".$_POST['txt_dias'];
	 //exit;
	//print_r($campitos); //exit;
    $ban_id = $Gen->SetValores($campitos,$_POST['nombretabla']); //exit;
	$Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Ingreso registro tabla ".$_POST['nombretabla']." id: ".$ban_id);
	if($ban_id>0)
	   echo "<script>alert('Registro agregado satisfactoriamente.');</script>";
	else
	  echo "<script>alert('Hubo error, puede ser datos incompletos.');</script>";
	if($_POST['flag']==1){?>
	<script>Enviar('editartabla.php?tablaoriginal=<?=$_POST['tablapadre']?>&v_id=<?=$_POST['idpadre']?>&idaxm=<?=$_POST['idaxm']?>','contenido')</script>
   <? }
    else { ?>
	<script>Enviar('admintablas1.php?tablaoriginal=<?=$_POST['nombretabla']?>','contenido')</script>
<?php }} ?> 
<?php if(isset($_POST['b']) && $_POST['b']==3)//Volver de Insertar tabla
{
if($_POST['flag']==1){?>
	<script>Enviar('editartabla.php?tablaoriginal=<?=$_POST['tablapadre']?>&v_id=<?=$_POST['idpadre']?>&idaxm=<?=$_POST['idaxm']?>','contenido')</script>
   <? }
    else { ?>
	<script>Enviar('admintablas1.php?tablaoriginal=<?=$_POST['tablaoriginal']?>','contenido')</script>
<?php }}?>
<div style="float:left; width:500px;padding-left:80px" id="contenido"> 
  <?php 
    if($mio==31)
	{
	   require_once("editartabla.php");
	}  
	if($mio==32)
	{
	   require_once("insertar_tabla.php");
	}
	if($mio==33)
	{
	   require_once("editartablasub.php");
	}
	if($mio==34)
	{
	   require_once("insertar_tablasub.php");
	}
	if($mio==35)
	{
	   require_once("admintablas1.php");
	}
 ?>
 
<br class="clear" />
</div><!--FIN DIV POSICION-->
<br class="clear" />
 <p class="texto"><? $campo_mostrar="txt_texto";
                      $sql = "SELECT txt_texto FROM ".$t_textos." WHERE txt_pagina='configuracion' AND txt_estado=1;";
                      echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?></p>
<br class="clear" />
</div>
<br class="clear" />
