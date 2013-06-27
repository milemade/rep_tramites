<?php
print_r($_POST);
if(isset($_POST['b']) && $_POST['b']==1)
{  
    $campos = $_POST['nombre_campos_tabla'];
	$condicion = $_POST['campo_id']."=".$_POST[id_edi];
	$Gen->SetDatos($campos,$_POST['nombretabla'],$condicion);
	echo "<script>alert('Registro actualizado satisfactoriamente.');</script>";
	$_POST['b'] = 0;
	unset($_POST['nombre_campos_tabla']);
	$_POST['nombretabla'] = $_POST['tablapadre'];
}
if(isset($_POST['b']) && $_POST['b']==2)
{
    $Valores = $_POST['nombre_campos_tabla'];
	$Gen->SetValores($Valores,$_POST['nombretabla']);
	echo "<script>alert('Registro agregado satisfactoriamente.');</script>";
	$_POST['b'] = 0;
	$_POST['nombretabla'] = $_POST['tablapadre'];
}

?> 
<script>
function eliminar(campo_id,tabla,id,campo_estado,idaxm)
{
   if (confirm("Esta seguro que desea eliminar este registro"))
   {
		window.location="config_eliminar.php?campo_id="+campo_id+"&v_id="+id+"&tabla="+tabla+"&campo_estado="+campo_estado+"&idaxm="+idaxm;
   }
}
function ira(tabla,id,n)
{ 
	window.location="n.php?nombretabla="+tabla+"&id="+id+"&n="+3; 
}
</script>
<div id="barra">
<a href="#" class="titulo">CONFIGURACION</a>
<a href="logout.php"></a>
<a href="aplicacion.php?n=1" class="volver"></a>
<br class="clear" />
</div>

<div id="centro">
<div id="basic-accordian" ><!--Parent of the Accordion-->
<div style="width:200px; float:left">
  <?php
     
$dbm = new Database();
$sqlm = "SELECT a.axm_id, a.axm_nombre_tabla, a.axm_descripcion, a.axm_texto, a.axm_estado,a.axm_usu_id,axm_fechahora
			FROM ".$tabla_admin_menu." a
			JOIN ".$tabla_admin_tablas." b ON a.axm_nombre_tabla = b.axt_nombre_tabla AND a.axm_ban=0
			JOIN ".$tabla_admin_permisos." c ON a.axm_nombre_tabla = c.aper_nombre_tabla
			GROUP BY a.axm_nombre_tabla ORDER BY a.axm_descripcion";
 //echo $sqlm;
$sqlm1 = $sqlm." LIMIT 0,1;";
$sqlm2 = $sqlm." LIMIT 1,30;";
$dbm->query($sqlm1);
//echo $sqlm1;
while($dbm->next_row()){ 
  if($_POST['idaxm'] == $dbm->axm_id)
	     $clase = "accordion_headings header_highlight" ;
	else
	     $clase = "accordion_headings"; 
  
?>
<div class="<?=$clase?>" onclick="ira('<?=$dbm->axm_nombre_tabla?>',<?=$dbm->axm_id?>,3)"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></div>
<? }$dbm->close(); 
$dbm = new Database();
$sqlm2 = $sqlm." LIMIT 1,30;";
$dbm->query($sqlm2);
while($dbm->next_row()){ 
if($_POST['idaxm'] == $dbm->axm_id)
	     $clase = "accordion_headings header_highlight" ;
	else
	     $clase = "accordion_headings";
?>
<div class="<?=$clase?>" onclick="ira('<?=$dbm->axm_nombre_tabla?>',<?=$dbm->axm_id?>,3)"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></div>
<? }$dbm->close(); ?> 
</div>
<!--FIN MENU LATERAL-->
<div style="float:right; width:680px;">
<? 
    if(!isset($mio))
   {
      require_once("admintablas1.php");
   }
?>
<? if($mio==31)
{
   require_once("editartabla.php");
}
?>
<? if($mio==32)
{
   require_once("insertar_tabla.php");
}
?>
<? if($mio==33)
{
   require_once("editartablasub.php");
}
?>
<? if($mio==34)
{
   require_once("insertar_tablasub.php");
}
?>

</div>
<br class="clear" />
</div>
<br class="clear" />
<br>
  <p class="texto"><? $campo_mostrar="txt_texto";
                      $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='configuracion' AND txt_estado=1;";
                      echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?></p>
<br class="clear" />
</div>
<br class="clear" />
</div>
