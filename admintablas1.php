<?   require_once("conf/clave.php");
     //print_r($_POST);
     if(isset($_GET['tablaoriginal']) && $_GET['tablaoriginal']!='')
          $tablaoriginal = $_GET['tablaoriginal'];
	 if(isset($_POST['tablaoriginal']) && $_POST['tablaoriginal']!="")
	      $tablaoriginal = $_POST['tablaoriginal'];
     $tablaoriginal = strtolower($tablaoriginal);
     require_once("admin_permisos.php");
     $ssql = "SELECT axm_id, axm_nombre_tabla, axm_descripcion, axm_texto,axm_estado,axm_usu_id,axm_fechahora,axm_submenu,axm_camposub,axm_equipo,axm_ip
	          FROM ".$tabla_admin_menu." WHERE axm_nombre_tabla='".$tablaoriginal."';";
     $dbm = new Database();
     $dbm->query($ssql);
     $dbm->next_row();
     $dbaxmid = $dbm->axm_id;
     $descripcion=$dbm->axm_descripcion;
     $campoequipo = $dbm->axm_equipo;
     $campoip = $dbm->axm_ip;     ?>
	<table width="680" border="0">
  <tr>
    <td colspan="2" class="tit_bobo"><?=$Descripcion = $Gen->limpiarCaracteresEspeciales($dbm->axm_descripcion)?>
<a target="blank" href="admin_exportar_tabla.php?tabla=<?=$tablaoriginal?>&campoestado=<?=$dbm->axm_estado?>&busqueda=<?=$_POST['busqueda']?>" style="padding-left:550px"><img src="imagenes/btn_imprimir.png" id="img" width="38" height="38" onclick="document.getElementById("img").style.visibility="hidden"; "/></a></td>
<tr>
    <td colspan="2"><p class="texto_bobo"><?=utf8_encode($dbm->axm_texto)?></p></td>
  </tr>
 <?  $busquina = 'N/A';
     if(isset($_POST['busqueda']) && $_POST['busqueda']!='')
         $busquina = $_POST['busqueda'];
     else { $busquina ='';} ?> 
  <tr>
    <td width="336"><? if($tablaoriginal==$t_tramite_tipo) { include "busquedatipotramite.php";} else {?><form method="POST" name="frmbus" action="aplicacion.php">
<input type="text" name="busqueda" required value="<?=$busquina?>"><input type="submit" class="bot" value="Buscar">
<input type="hidden" name="n" value="3">
<input type="hidden" name="mio" value="35">
<input type="hidden" name="tablaoriginal" value="<?=$tablaoriginal?>">
</form><? } ?></td>
    <td width="334"><?php if(isset($insertar)&& $insertar==1){?><a class="ingresar" title="Ingresar Nuevo Registro" href="n.php?n=3&mio=32&nombretabla=<?=$tablaoriginal?>&v_id=<?=$db->id?>&id=<?=$dbaxmid?>&descripcion=<?=$Descripcion?>&campousu=<?=$dbm->axm_usu_id?>&campofechahora=<?=$dbm->axm_fechahora?>&submenu=<?=$dbm->axm_submenu?>&camposub=<?=$dbm->axm_camposub?>&campoequipo=<?=$dbm->axm_equipo?>">&nbsp;&nbsp;&nbsp;NUEVO REGISTRO</a><?php } ?></td>
  </tr>
</table> 

<table width="680" border="0" cellpadding="0"  >
<tr><td colspan="2"></td></tr>
  <tr class="cabecera">
    <td >Nombre</td>
    <td colspan="2">Opciones</td>
  </tr>    
  
  <?php  
     
         $dbd = new Database();
	 $sqld = "SELECT axt_nombre_campo,axt_campo_es_id,axt_visualizar, axt_tipo_campo, axt_campo_imprimir, axt_tabla_relacion, axt_campo_relacion,axt_order
              FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tablaoriginal."' ORDER BY axt_id;";
	 $sqlsi = "SELECT axt_nombre_campo FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla='".$tablaoriginal."' AND axt_visualizar='SI' AND axt_tipo_campo = 'select';";
	 $dbsi= new Database();
	 $dbsi->query($sqlsi);
	 $numsi = $dbsi->num_rows();
	 //echo $sqld;
	 if($numsi>0)
	   $dbsi->close();
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
 	   {  //$e = 0;
	      if($dbd->axt_tipo_campo=="select")
		  {     
		       //echo "ENTRAA<br>";
		    $arr_buscar[]='';
			   $campo_desc .= $dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir;
			   if(isset($_POST['busqueda']))
			       $arr_buscar[] = $dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir." LIKE '%".$_POST['busqueda']."%' ";
			   //print_r($arr_buscar);
			   if($numsi==1)
			      $campodesc = "CONCAT(".$dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir.",' - ',";
			   if($numsi>1)
			      $concat .= $dbd->axt_tabla_relacion.".".$dbd->axt_campo_imprimir;
			   if($countsi<$numsi)
			      $concat .= ",' - ',";
			   $from .= $dbd->axt_tabla_relacion.",";
			   $where .= " AND ".$dbd->axt_tabla_relacion.".".$dbd->axt_campo_relacion."=".$tablaoriginal.".".$dbd->axt_nombre_campo;
			   $countsi++;
			   //$e++;
		  }
		  else
		  {
              $campo_desc .= $dbd->axt_nombre_campo; 
			  //$orderby = $tablaoriginal.".".$dbd->axt_nombre_campo;
			  if(isset($campodesc) && isset($tablaoriginal) && isset($dbd))
			  {
			     $campodesc .=  $tablaoriginal.".".$dbd->axt_nombre_campo.")";
			  }
			  if(isset($_POST['busqueda']))
			  $arr_buscar[] = "$tablaoriginal.$dbd->axt_nombre_campo like '%".$_POST['busqueda']."%'";
			  if(isset($concat) && $concat!="")
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
   if(isset($_GET['pagina']))
   $pagina = $_GET['pagina'];
   if (!isset($pagina))
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
	 if($tablaoriginal=="cargos")
	 {
	     $sql = "SELECT car_id id,car_nombre nom FROM v_cargos";
		 if(isset($_POST['busqueda']) && $_POST['busqueda']!="")
		    $sql = $sql."  WHERE car_nombre LIKE '%".$_POST['busqueda']."%'";
		 $orderby = "car_nombre";
	}
        elseif($tablaoriginal=="depxdepal")
	 {
	     $sql = "SELECT dxd_id id,nombre nom FROM v_dxdepto";
		 if(isset($_POST['busqueda']) && $_POST['busqueda']!="")
		    $sql = $sql."  WHERE nombre LIKE '%".$_POST['busqueda']."%'";
		 $orderby = "nom";
	}
	elseif($tablaoriginal=="tramite_tipo")
	{
	     $sql = "SELECT a.txt_id id, a.txt_nombre nom
                 FROM  `tramite_tipo` a
                 JOIN tramite_frecuencia d ON a.txt_txf_id = d.txf_id";
		 if(isset($_POST['busqueda']) && $_POST['busqueda']!='' && $tablaoriginal=="tramite_tipo")
		{ 
		     if($_POST['cond']=='a.txt_tmaximo')
			 {
			     $arr = explode(',',$_POST['busqueda']);
			     $sql .= " WHERE a.txt_tmaximo BETWEEN ".$arr[0]." AND ".$arr[1];
			 }
			 else
			     $sql.= " WHERE ".$_POST['cond']." LIKE '%".$_POST['busqueda']."%'";
		}
		$orderby = "nom";
	}	
	 else
	 {
	 $sql = "SELECT ".$campo_id." id,".$campo_desc." nom
	         FROM $from".$tablaoriginal."
			 WHERE ".$tablaoriginal.".".$dbm->axm_estado."=1".$where;
	 
			 if(isset($_POST['busqueda']) && $_POST['busqueda']!='')
			 {
				for($k=0;$k<count($arr_buscar);$k++)
				{
				   //print_r($arr_buscar);
				   $query_buscar = $sql." and ".$arr_buscar[$k]." ";
				   //echo "<br><br>".$query_buscar;
				   $db = new Database();
				   $db->query($query_buscar);
				   $num_rows = $db->num_rows();
				   $db->close();
				   //echo "numrows es".$num_rows."<br>";
				   if($num_rows>0)
				   {
					  $sql = $query_buscar; //exit;
				   }

				}
			 }
	}
	
	if($tablaoriginal=="ciudad")
	   $orderby = "ciu_dep_id,ciu_nombre";
	$sql.= " ORDER BY ".$orderby;
	 //print_r($arr_buscar);
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
    <td width="623" class="txt_espacio" ><?=strtoupper($db->nom)?></td>
    <td width="24" class="txt_espacio"><?php if(isset($editar) && $editar==1){?><a href="n.php?n=3&mio=31&tablaoriginal=<?=$tablaoriginal?>&v_id=<?=$db->id?>&id=<?=$dbaxmid?>&descripcion=<?=$descripcion?>&campousu=<?=$dbm->axm_usu_id?>&campofechahora=<?=$dbm->axm_fechahora?>&submenu=<?=$dbm->axm_submenu?>&camposub=<?=$dbm->axm_camposub?>&campoequipo=<?=$campoequipo?>"><img src="tabbed_pages/editar.png" title="Editar" alt="Editar" width="20" height="20" /></a><?php } ?></td>
    <td width="25" class="txt_espacio"><?php if(isset($borrarlogico) && $borrarlogico==1){?><img title="Eliminar" alt="Eliminar" src="tabbed_pages/eliminar.png" width="20" height="20" onclick="eliminar('<?=$campo_id?>','<?=$tablaoriginal?>','<?=$db->id?>','<?=$dbm->axm_estado?>','<?=$dbm->axm_id?>','<?=$dbm->axm_submenu?>','<?=$dbm->axm_camposub?>','');"/><?php } ?></td>
  </tr>
  <tr><td colspan="3"></td></tr>
 
 <? } ?>
</table>
<br />
<?php $dbm->close();?>
<!--PAGINACION-->
 <div align="center">
<?php  if($total_registros>0){
         if(($pagina - 1) > 0)
		 { $pag = $pagina - 1;?>
			 <a href="javascript:Enviar('admintablas1.php?tablaoriginal=<?=$tablaoriginal?>&pagina=<?=$pag?>','contenido')" class='hoja_sin'><< Anterior</a>
	<?php	 } 
       for ($i=1; $i<=$total_paginas; $i++)
	   {
		   if ($pagina == $i) {?>
		    <a href="javascript:Enviar('admintablas1.php?tablaoriginal=<?=$tablaoriginal?>&pagina=<?=$i?>','contenido')" class='hoja'><?=$i?></a>
			  
		   <? } else {
		      ?> 
			  
			 <a href="javascript:Enviar('admintablas1.php?tablaoriginal=<?=$tablaoriginal?>&pagina=<?=$i?>','contenido')" class='hoja_sin'><?=$i?></a>
	<?php	}
	  }
		if(($pagina + 1)<=$total_paginas)
		 {  $pag = $pagina + 1;
		 ?>
		<a href="javascript:Enviar('admintablas1.php?tablaoriginal=<?=$tablaoriginal?>&pagina=<?=$pag?>','contenido')" class='hoja_sin'>Siguiente >></a>
<?php    }
} ?>
 </div>
