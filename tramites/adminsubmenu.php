 <?  require_once("conf/clave.php");
     //echo "imp".$txt_dxe_id;
     $tablaoriginal = $_POST['submenu'];//Se asigna el valor de la tabla dependiente
     $tablapadre = $Gen->padre($tablaoriginal);
     include "admin_permisos.php"; //Permisos del Usuario que ingresa
     //Para resaltar la opcion del menu
     $sqlk = "SELECT axm_id FROM ".$tabla_admin_menu." WHERE axm_nombre_tabla='".$_POST['tablapadre']."'";	 
     $idxampadre = $Gen->GetUnDato("axm_id",$sqlk);
     //////////////     
     $dbm = new Database();
     $ssql = "SELECT axm_id, axm_nombre_tabla, axm_descripcion, axm_texto,axm_estado,axm_usu_id,axm_fechahora,axm_usu_id,axm_submenu,axm_camposub,axm_equipo
			  FROM ".$tabla_admin_menu." WHERE axm_nombre_tabla='".$tablaoriginal."';";
     //echo $ssql; //exit;
     $dbm->query($ssql);
     $dbm->next_row();
     $dbmid = $dbm->axm_id;
     $descripcion=$dbm->axm_descripcion;
     $campsub = $dbm->axm_camposub;
     $campoequipo = $dbm->axm_equipo; ?>
	 <table width="600" border="0">
  <tr>
    <td class="tit_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></td>
    <td rowspan="2"><a target="blank" href="admin_exportar_tablasub.php?tabla=<?=$tablaoriginal?>&campoestado=<?=$dbm->axm_estado?>&tablapadre=<?=$tablapadre?>&idpadre=<?=$_POST['v_id']?>&camposub=<?=$dbm->axm_camposub?>&idaxm=<?=$dbm->axm_id?>">&nbsp;&nbsp;<img src="imagenes/btn_imprimir.png" width="48" height="48" alt="imprimir" /></a></td>
  </tr>
  <tr>
    <td class="texto_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_texto)?></td>
  </tr>
</table>
 <table width="600" border="0" cellpadding="0">
        <tr><td colspan="2"><form method="POST" name="frmbus" action="aplicacion.php">
<input type="text" name="busqueda" required value="<?=$_POST['busqueda']?>"><input type="submit" class="bot" value="Buscar">
<input type="hidden" name="n" value="3">
<input type="hidden" name="mio" value="35">
<input type="hidden" name="tablaoriginal" value="<?=$tablaoriginal?>">
</form></td></tr>
		<tr><td colspan="2"><?php if($insertar==1){?><div align="center"><a title="Ingresar Nuevo Registro" class="ingresar" href="n.php?n=3&mio=32&id=<?=$dbm->axm_id?>&nombretabla=<?=$tablaoriginal?>&idpadre=<?=$_POST['v_id']?>&descripcion=<?=$descripcion?>&campousu=<?=$dbm->axm_usu_id?>&campofechahora=<?=$dbm->axm_fechahora?>&campoequipo=<?=$campoequipo?>&txt_dxe_id=<?=$txt_dxe_id?>">NUEVO REGISTRO</a></div><?php } ?></td></tr>
		
  <tr class="cabecera">
    <td >Nombre</td>
    <td colspan="2">Opciones</td>
  </tr>
  <?php 
     
     $dbd = new Database();
	 $sqld = "SELECT axt_nombre_campo,axt_campo_es_id,axt_visualizar, axt_tipo_campo, axt_campo_imprimir, axt_tabla_relacion, axt_campo_relacion,axt_order
              FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tablaoriginal."' ORDER BY axt_id;";
	 $sqlsi = "SELECT axt_nombre_campo FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tablaoriginal."' AND axt_visualizar='SI' AND axt_tipo_campo = 'select' ORDER BY axt_id;";
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
	     $orderby = $dbd->axt_order;
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
			   //echo $campodesc;
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
   $registros = 20;
   $paginasub = $_GET['paginasub'];
   if (!$paginasub) 
   {
      $inicio = 0;
      $paginasub = 1;
   }
   else 
   {
     $inicio = ($paginasub - 1) * $registros;
   }
	 $db = new Database();
	 $db1 = new Database();
	 $sql = "SELECT ".$campo_id." id,".$campo_desc." nom
	         FROM $from".$tablaoriginal."
			 WHERE ".$tablaoriginal.".".$dbm->axm_estado."=1 AND ".$_POST['camposub']."=".$_POST['v_id'].$where." ORDER BY ".$orderby;
	
	if($tablaoriginal=="tramite_pasos")
	   $sql = "SELECT pxt_id id,pxt_nombre nom FROM v_pasostramite WHERE pxt_txt_id=".$_POST['v_id']." AND pxt_estado=1";
	//echo $sql;
	$db1->query($sql);
    $total_registros = $db1->num_rows();
	$total_paginas = ceil($total_registros / $registros);
	$db1->close();
	$sql .= " LIMIT $inicio, $registros";
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
    <td width="377" class="txt_espacio" ><?=utf8_decode($db->nom)?></td>
    <td width="32" class="txt_espacio"><? if($editar==1){?><a href="n.php?n=3&mio=33&nombretabla=<?=$tablaoriginal?>&v_id=<?=$db->id?>&id=<?=$dbmid?>&descripcion=<?=$descripcion?>&campousu=<?=$dbm->axm_usu_id?>&campofechahora=<?=$dbm->axm_fechahora?>&tablapadre=<?=$tablaenvia?>&idpadre=<?=$id_padre?>&idaxmpadre=<?=$_POST['idaxm']?>&submenu=<?=$cad[0]?>&camposub=<?=$cad[1]?>&campoequipo=<?=$campoequipo?>&txt_dxe_id=<?=$txt_dxe_id?>"><img src="tabbed_pages/editar.png" title="Editar" alt="Editar" width="20" height="20" /></a><? } ?></td>
    <td width="32" class="txt_espacio"><? if($borrarlogico==1){?><input type="image" src="tabbed_pages/eliminar.png" title="Eliminar" alt="Eliminar" width="20" height="20" onclick="eliminar('<?=$campo_id?>','<?=$tablaoriginal?>','<?=$db->id?>','<?=$dbm->axm_estado?>','<?=$idxampadre?>','<?=$tablaoriginal?>','<?=$_POST['camposub']?>','<?=$tablapadre?>','<?=$id_padre?>');"/><? } ?></td>
  </tr>
  <tr><td colspan="3"></td></tr>
 <?php } ?>
 
</table><br />


<!--PAGINACION-->
 <div align="center">
<?php  if($total_registros>0){
         if(($paginasub - 1) > 0){
		    $pagg = $paginasub - 1;
?>
<a href="javascript:Enviar('editartabla.php?tablapadresub=<?=$tablapadre?>&paginasub=<?=$pagg?>&v_id=<?=$_POST['v_id']?>&submenu=<?=$tablaoriginal?>&camposub=<?=$_POST['camposub']?>','contenido')" class='hoja_sin'>Anterior</a>
	<?php  } 
       for ($i=1; $i<=$total_paginas; $i++)
	   {
		   if ($paginasub == $i) {?>
			  <a href="javascript:Enviar('editartabla.php?tablapadresub=<?=$tablapadre?>&paginasub=<?=$i?>&v_id=<?=$_POST['v_id']?>&submenu=<?=$tablaoriginal?>&camposub=<?=$_POST['camposub']?>','contenido')" class='hoja'><?=$i?></a>
		   <? } else {
		      ?> 
			 <a href="javascript:Enviar('editartabla.php?tablapadresub=<?=$tablapadre?>&paginasub=<?=$i?>&v_id=<?=$_POST['v_id']?>&submenu=<?=$tablaoriginal?>&camposub=<?=$_POST['camposub']?>','contenido')" class='hoja_sin'><?=$i?></a>
	<?php	}
	  }
		if(($paginasub + 1)<=$total_paginas)
		 {  $paginasub = $paginasub + 1;
		 ?>
	<a href="javascript:Enviar('editartabla.php?tablapadresub=<?=$tablapadre?>&paginasub=<?=$paginasub?>&v_id=<?=$_POST['v_id']?>&submenu=<?=$tablaoriginal?>&camposub=<?=$_POST['camposub']?>','contenido')" class='hoja_sin'>Siguiente >></a>
<?php    }
} ?>
 </div>
