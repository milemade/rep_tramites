<?php
if(isset($_POST['b']) && $_POST['b']==1)
{  
    $campos = $_POST['nombre_campos_tabla'];
	$campos = substr ($campos, 0, strlen($campos) - 1);
	//echo $campos; exit;
	$condicion = $_POST['campo_id']."=".$_POST[id];
	$Gen->SetDatos($campos,$_POST['nombre_tabla'],$condicion);
	echo "<script>alert('Registro actualizado satisfactoriamente.');</script>";
	
}
if(isset($_POST['b']) && $_POST['b']==2)
{
    $campos = $_POST['nombre_campos_tabla'];
	$Valores = substr ($campos, 0, strlen($campos) - 1);
	$Gen->SetValores($Valores,$_POST['nombre_tabla']);
	echo "<script>alert('Registro agregado satisfactoriamente.');</script>";
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
$sqlm = "SELECT a.axm_id, a.axm_nombre_tabla, a.axm_descripcion, a.axm_texto, a.axm_estado,a.axm_usu_id
			FROM ".$tabla_admin_menu." a
			JOIN ".$tabla_admin_tablas." b ON a.axm_nombre_tabla = b.axt_nombre_tabla
			JOIN ".$tabla_admin_permisos." c ON a.axm_nombre_tabla = c.aper_nombre_tabla
			GROUP BY a.axm_nombre_tabla";
$dbm->query($sqlm);
while($dbm->next_row()){
?>
<div id="test<?=$dbm->axm_id?>-header" class="accordion_headings header_highlight" ><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></div>
<? }$dbm->close(); ?> 
</div>

<div style="float:right; width:640px;">
<?php
  $dbm = new Database();
  $ssql = "SELECT a.axm_id, a.axm_nombre_tabla, a.axm_descripcion, a.axm_texto, a.axm_estado,a.axm_usu_id
			FROM ".$tabla_admin_menu." a
			JOIN ".$tabla_admin_tablas." b ON a.axm_nombre_tabla = b.axt_nombre_tabla
			JOIN ".$tabla_admin_permisos." c ON a.axm_nombre_tabla = c.aper_nombre_tabla
			GROUP BY a.axm_nombre_tabla;";
  $dbm->query($ssql);
  while($dbm->next_row()) {
?>
  <div id="test<?=$dbm->axm_id?>-content">
	<div class="accordion_child">
    <h1 class="tit_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></h1>
    	<p class="texto_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_texto)?><br><br></p>
		<script>
		function eliminar(campo_id,tabla,id,campo_estado)
		{
		   if (confirm("Esta seguro que desea eliminar este registro"))
	       {
                window.location="config_eliminar.php?campo_id="+campo_id+"&v_id="+id+"&tabla="+tabla+"&campo_estado="+campo_estado;
           }
		}
		</script>
        <table width="620" border="0" cellpadding="0"  >
		<td colspan="2"><div align="right"><a href="#" class="ingresar" onclick = "document.getElementById('<?=$dbm->axm_nombre_tabla?>_add').style.display='block';">INGRESAR</a></div></td>
  <tr class="cabecera">
    <td >Nombre</td>
    <td colspan="2">Opciones</td>
  </tr>
  <?php
     $tabla = $dbm->axm_nombre_tabla;
     $dbd = new Database();
	 $sqld = "SELECT axt_nombre_campo,axt_campo_es_id,axt_visualizar, axt_tipo_campo, axt_campo_imprimir, axt_tabla_relacion, axt_campo_relacion
              FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tabla."';";
	 $sqlsi = "SELECT axt_nombre_campo FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tabla."' AND axt_visualizar='SI' AND axt_tipo_campo = 'select';";
	 $dbsi= new Database();
	 $dbsi->query($sqlsi);
	 $numsi = $dbsi->num_rows();
	 $dbsi->close;
	 $campo_desc = "";;
	 $where = "";
	 $dbd->query($sqld);
	 while($dbd->next_row())
	 {
	   
	   if($dbd->axt_campo_es_id==1)
 	   {
        $campo_id = $dbd->axt_nombre_campo;
	   }
	   if($dbd->axt_visualizar=='SI')
 	   { 
	      if ($campo_desc != "")
             $campo_desc .= ",";
		  if($dbd->axt_tipo_campo=="select")
		    {
			   $campo_desc .= $dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir;
			   $where .= " AND ".$dbd->axt_tabla_relacion.".".$dbd->axt_campo_relacion."=".$dbm->axm_nombre_tabla.".".$dbd->axt_nombre_campo;
			   $from .= $dbd->axt_tabla_relacion.",";
		    }
			else
               $campo_desc .= $dbd->axt_nombre_campo;
	   }  
	 } 
	 
	 $db = new Database();
	 $sql = "SELECT ".$campo_id." id,".$campo_desc." nom
	         FROM $from".$dbm->axm_nombre_tabla."
			 WHERE ".$dbm->axm_estado."=1".$where.";";
	 echo $sql;
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
    <td width="377" class="txt_espacio" ><?=$db->nom?></td>
    <td width="32" class="txt_espacio"><a href="#" onclick = "document.getElementById('<?=$tabla?>_<?=$db->id?>').style.display='block';"><img src="tabbed_pages/editar.png" width="32" height="32" /></a>
	<!-- ventana modal -->  
	<div id="<?=$tabla?>_<?=$db->id?>" class="modal">
    <p><?php include "editartabla.php"; ?></p>
    </div>
	<div id="<?=$tabla?>_add" class="modal" >
    <p><?php include "insertar_tabla.php"; ?></p>
    </div>
<!-- fin ventana modal -->
	</td>
    <td width="32" class="txt_espacio"><img src="tabbed_pages/eliminar.png" width="32" height="32" style="cursor:pointer" onclick="eliminar('<?=$campo_id?>','<?=$tabla?>','<?=$db->id?>','<?=$dbm->axm_estado?>');"/></td>
  </tr>
  
  <? } ?>
 
</table>
<br />

<!--<div align="center">
<a href="#" class="hoja">1</a>
<a href="#" class="hoja_sin">2</a>
<a href="#" class="hoja_sin">3</a>
<a href="#" class="hoja_sin">4</a>
<a href="#" class="ingresar" onclick = "document.getElementById('<?=$tabla?>_add').style.display='block';">INGRESAR</a>
</div>-->
    </div>
  </div>
 <? } $dbm->close();$dbd->close();$db->close();$dbu->close();$db2->close();?>
 
<br class="clear" />
</div>
<br class="clear" />
  <p class="texto"><? $campo_mostrar="txt_texto";
                      $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='configuracion';";
                      echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?></p>
<br class="clear" />

</div>

<br class="clear" />