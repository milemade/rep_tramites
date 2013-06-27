<?  require_once("conf/clave.php");
     $tablaoriginal = $_GET['tablapadre'];
     $dbm = new Database();
     $ssql = "SELECT axm_id, axm_nombre_tabla, axm_descripcion, axm_texto,axm_estado,axm_usu_id,axm_fechahora,axm_submenu,axm_camposub
			  FROM ".$tabla_admin_menu." WHERE axm_nombre_tabla='".$tablaoriginal."';";
     $dbm->query($ssql);
	 $dbm->next_row();
	 $dbaxmid = $dbm->axm_id;
	 $descripcion=$dbm->axm_descripcion;?>
 <h1 class="tit_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?></h1>
    	<!--<p class="texto_bobo"><?=$Gen->limpiarCaracteresEspeciales($dbm->axm_texto)?></p>-->
	<? if($_POST['nombretabla']!="") {?>	
<table width="720" border="0" cellpadding="0"  >
<tr>
  <td>&nbsp;</td>
  <td><a href="#"><img src="imagenes/excel.png" width="48" height="48" /></a></td>
</tr>
<tr><td colspan="2"><div align="center"> <a class="ingresar" href="n.php?n=3&mio=32&nombretabla=<?=$tablaoriginal?>&v_id=<?=$db->id?>&id=<?=$dbmid?>&descripcion=<?=$descripcion?>&campousu=<?=$dbm->axm_usu_id?>&campofechahora=<?=$dbm->axm_fechahora?>&submenu=<?=$dbm->axm_submenu?>&camposub=<?=$dbm->axm_camposub?>">INGRESAR</a></div></td></tr>
<tr><td colspan="2"></td></tr>
  <tr class="cabecera">
    <td >Nombre</td>
    <td colspan="2">Opciones</td>
  </tr>
  <? } ?>
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
   $registros = 20;
   $pagina = $_POST['pagina'];
   if (!$pagina) 
   {
      $inicio = 0;
      $pagina = 1;
   }
   else 
   {
     $inicio = ($pagina - 1) * $registros;
   }
	 $db = new Database();
	 $db1 = new Database();
	 $sql = "SELECT ".$campo_id." id,".$campo_desc." nom
	         FROM $from".$tablaoriginal."
			 WHERE ".$tablaoriginal.".".$dbm->axm_estado."=1".$where." ORDER BY ".$campo_desc;
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
    <td width="608" class="txt_espacio" ><?=strtoupper($db->nom)?></td>
    <td width="53" class="txt_espacio"><a href="n.php?n=3&mio=31&nombretabla=<?=$tablaoriginal?>&v_id=<?=$db->id?>&id=<?=$dbaxmid?>&idaxmpadre=<?=$dbaxmid?>&descripcion=<?=$descripcion?>&campousu=<?=$dbm->axm_usu_id?>&campofechahora=<?=$dbm->axm_fechahora?>&submenu=<?=$dbm->axm_submenu?>&camposub=<?=$dbm->axm_camposub?>"><img src="tabbed_pages/editar.png" width="20" height="20" /></a></td>
    <td width="51" class="txt_espacio"><input type="image" src="tabbed_pages/eliminar.png" width="20" height="20" onclick="eliminar('<?=$campo_id?>','<?=$tablaoriginal?>','<?=$db->id?>','<?=$dbm->axm_estado?>','<?=$dbm->axm_id?>');"/></td>
  </tr>
  <tr><td colspan="3"></td></tr>
 <?php } ?>
</table>
<br />
 <div align="center">
<?php  if($total_registros>0){
         if(($pagina - 1) > 0)
		 { $pag = $pagina - 1;?>
			 <a class='hoja_sin' href='n.php?n=3&nombretabla=<?=$tablaoriginal?>&pagina=<?=$pag?>&idaxm=<?=$dbmid?>'><< Anterior</a>
	<?php	 } 
       for ($i=1; $i<=$total_paginas; $i++)
	   {
		   if ($pagina == $i) {?>
			  <a href='n.php?n=3&nombretabla=<?=$tablaoriginal?>&pagina=<?=$pagina?>&idaxm=<?=$dbmid?>' class='hoja'><?=$pagina?></a>
		   <? } else {
		      ?> 
			 <a class='hoja_sin' href='n.php?n=3&nombretabla=<?=$tablaoriginal?>&pagina=<?=$i?>&idaxm=<?=$dbmid?>'><?=$i?></a> 
	<?php	}
	  }
		if(($pagina + 1)<=$total_paginas)
		 {  $pagina = $pagina + 1;
		 ?>
			 <a class='hoja_sin' href='n.php?n=3&nombretabla=<?=$tablaoriginal?>&pagina=<?=$pagina?>&idaxm=<?=$dbmid?>'>Siguiente >></a>
<?php    }
} ?>
 </div>
