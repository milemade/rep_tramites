<?php
//print_r($_POST);
if(isset($_POST['b']) && $_POST['b']==1)
{  
    $campos = $_POST['nombre_campos_tabla'];
	$condicion = $_POST['campo_id']."=".$_POST[id];
	$Gen->SetDatos($campos,$_POST['nombre_tabla'],$condicion);
	echo "<script>alert('Registro actualizado satisfactoriamente.');</script>";
	$_POST['b'] = 0;
	
}
if(isset($_POST['b']) && $_POST['b']==2)
{
    $Valores = $_POST['nombre_campos_tabla'];
	$Gen->SetValores($Valores,$_POST['nombre_tabla']);
	echo "<script>alert('Registro agregado satisfactoriamente.');</script>";
	$_POST['b'] = 0;
}
?> 
<style>
    /* estilo para lo q este dentro de la ventana modal */
    .modal {
        display: none;
        position: relative;
        top: 0%;
        left: 0%;
        width: 100%;
        height: 100%;
        padding: 16px;
        background: #fff;
		color: #333;
        z-index:1002;
        overflow: auto;
    }
</style>
<script>
		function eliminar(campo_id,tabla,id,campo_estado)
		{
		   if (confirm("Esta seguro que desea eliminar este registro"))
	       {
                window.location="config_eliminar.php?campo_id="+campo_id+"&v_id="+id+"&tabla="+tabla+"&campo_estado="+campo_estado;
           }
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
<div style="width:250px; float:left">
  <?php
     
$dbm = new Database();
$sqlm = "SELECT a.axm_id, a.axm_nombre_tabla, a.axm_descripcion, a.axm_texto, a.axm_estado,a.axm_usu_id,axm_fechahora
			FROM ".$tabla_admin_menu." a
			JOIN ".$tabla_admin_tablas." b ON a.axm_nombre_tabla = b.axt_nombre_tabla
			JOIN ".$tabla_admin_permisos." c ON a.axm_nombre_tabla = c.aper_nombre_tabla
			GROUP BY a.axm_nombre_tabla ORDER BY a.axm_descripcion";
$sqlm1 = $sqlm." LIMIT 0,1;";
$sqlm2 = $sqlm." LIMIT 1,30;";
$dbm->query($sqlm1);
//echo $sqlm1;
while($dbm->next_row()){ 
   
?>
<div id="test<?=$dbm->axm_id?>-header" class="accordion_headings header_highlight" ><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></div>
<? }$dbm->close(); 
$dbm = new Database();
$sqlm2 = $sqlm." LIMIT 1,30;";
$dbm->query($sqlm2);
while($dbm->next_row()){ 
if(isset($_POST['idaxm']) && $_POST['idaxm'] == $dbm->axm_id)
	     $clase = "accordion_headings header_highlight" ;
	else
	     $clase = "accordion_headings";
?>
<div id="test<?=$dbm->axm_id?>-header" class="<?=$clase?>" ><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></div>
<? }$dbm->close(); ?> 
</div>
<!--FIN MENU LATERAL-->
<div style="float:right; width:640px;">
<?php
  $dbm = new Database();
 
  $ssql = "SELECT a.axm_id, a.axm_nombre_tabla, a.axm_descripcion, a.axm_texto,a.axm_estado,a.axm_usu_id,axm_fechahora
			FROM ".$tabla_admin_menu." a
			JOIN ".$tabla_admin_tablas." b ON a.axm_nombre_tabla = b.axt_nombre_tabla
			JOIN ".$tabla_admin_permisos." c ON a.axm_nombre_tabla = c.aper_nombre_tabla
			GROUP BY a.axm_nombre_tabla ORDER BY a.axm_descripcion;";
  $dbm->query($ssql);
  while($dbm->next_row()) 
  {
     $tablaoriginal = trim($dbm->axm_nombre_tabla);
?>    
 

  <div id="test<?=$dbm->axm_id?>-content">
	<div class="accordion_child">
    <h1 class="tit_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></h1>
    	<p class="texto_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_texto)?></p>
        <table width="620" border="0" cellpadding="0"  >
		<tr><td colspan="2"><div align="center"><a href="#" class="ingresar" onclick = "document.getElementById('<?=$tablaoriginal?>_add').style.display='block';">INGRESAR</a></div></td></tr>
		<tr><td colspan="2"><div id="<?=$tablaoriginal?>_add" class="modal" ><p><?php include "insertar_tabla.php"; ?></p></div></td></tr>
  <tr class="cabecera">
    <td >Nombre</td>
    <td colspan="2">Opciones</td>
  </tr>
  <?php
     $dbd = new Database();
	 $sqld = "SELECT axt_nombre_campo,axt_campo_es_id,axt_visualizar, axt_tipo_campo, axt_campo_imprimir, axt_tabla_relacion, axt_campo_relacion
              FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tablaoriginal."';";
	 $sqlsi = "SELECT axt_nombre_campo FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tablaoriginal."' AND axt_visualizar='SI' AND axt_tipo_campo = 'select';";
	 $dbsi= new Database();
	 $dbsi->query($sqlsi);
	 $numsi = $dbsi->num_rows();
	 //echo $sqld;
	 $dbsi->close;
	 $campo_desc = "";
	 $from = "";
	 $where = "";
	 $dbd->query($sqld);
	 if($numsi>1)
		 $concat = "CONCAT(";
	 $countsi = 1;
	 while($dbd->next_row())
	 {
	   if($dbd->axt_campo_es_id==1)
 	   {
          $campo_id = $dbd->axt_nombre_campo;
	   }
	   if($dbd->axt_visualizar=='SI')
 	   { 
	      if($dbd->axt_tipo_campo=="select")
		  {     
			   $campo_desc .= $dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir;
			   if($numsi==1)
			      $campodesc = "CONCAT(".$dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir.",' - ',";
			   if($numsi>1)
			      $concat .= $dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir;
			   if($countsi<$numsi)
			      $concat .= ",' - ',";
			   $from .= $dbd->axt_tabla_relacion.",";
			   $where .= " AND ".$dbd->axt_tabla_relacion.".".$dbd->axt_campo_relacion."=".$tablaoriginal.".".$dbd->axt_nombre_campo;
			   $countsi++;
		  }
		  else
		  {
              $campo_desc .= $dbd->axt_nombre_campo;
			  $campodesc .=  $tablaoriginal.".".$dbd->axt_nombre_campo.")";
			  if($concat!="")
			      $concat .= ",' - ',".$tablaoriginal.".".$dbd->axt_nombre_campo;
		  }
		  
	   }  
	 } 
	 if($numsi>1)
     {
		 $concat .= ")";
		 $campo_desc = $concat;
	 }
	 if($numsi==1)
	    $campo_desc = $campodesc;
	 $db = new Database();
	 $sql = "SELECT ".$campo_id." id,".$campo_desc." nom
	         FROM $from".$tablaoriginal."
			 WHERE ".$tablaoriginal.".".$dbm->axm_estado."=1".$where.";";
	 if($tablaoriginal=="cargos")
     {
	     $sql = "SELECT car_id id, CONCAT( c.emp_nombre, ' - ', b.dxe_nombre, ' - ', a.car_nombre ) nom
				 FROM `cargos` a
				 JOIN dep_empresa b ON b.dxe_id = a.car_dxe_id
				 JOIN empresa c ON c.emp_ip = b.dxe_emp_id
				 ORDER BY c.emp_nombre, b.dxe_nombre, a.car_nombre;";
     }
	 //echo $sql;
	 $estilo = "celda_izq";
	 $estilo1 = "celda_izq";
	 $estilo2 = "celda_izq_azul";
	 $db->query($sql);
	 while($db->next_row())
	 {  
	    if($estilo==$estilo1)
		   $estilo = $estilo2;
		else
		   $estilo = $estilo1;
  ?>
  <tr class="<?=$estilo?>">
    <td width="377" class="txt_espacio" ><?=strtoupper($db->nom)?></td>
    <td width="32" class="txt_espacio"><a href="#" onclick = "document.getElementById('<?=$tablaoriginal?>_<?=$db->id?>').style.display='block';"><img src="tabbed_pages/editar.png" width="32" height="32" /></a></td>
    <td width="32" class="txt_espacio"><input type="image" src="tabbed_pages/eliminar.png" width="32" height="32" onclick="eliminar('<?=$campo_id?>','<?=$tablaoriginal?>','<?=$db->id?>','<?=$dbm->axm_estado?>');"/></td>
  </tr>
  <tr><td colspan="3"><div id="<?=$tablaoriginal?>_<?=$db->id?>" class="modal"><p><?php include "editartabla.php"; ?></p></div></td></tr>
 <?php } ?>
</table><br />

<div align="center">
<!--<a href="#" class="hoja">1</a>
<a href="#" class="hoja_sin">2</a>
<a href="#" class="hoja_sin">3</a>
<a href="#" class="hoja_sin">4</a>
<a href="#" class="ingresar">INGRESAR</a>-->
</div>
    </div>
  </div>
  
 <?php } $dbm->close();$dbd->close(); $db->close();?> 

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
