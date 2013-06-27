<?php
        $query_permisos = "SELECT a.`aper_txper_id` permiso
			FROM ".$tabla_admin_permisos." a
			JOIN ".$tabla_admin_tipo_permisos." b ON a.aper_txper_id = b.txper_id
			WHERE aper_nombre_tabla = '".$tablaoriginal."'
			AND aper_axp_id=".$_SESSION['usu_per_id'].";";
	//echo $query_permisos;
	$db_per = new Database();
	$db_per->query($query_permisos);
	while($db_per->next_row())
	 {
	  if($db_per->permiso==1)
	      $insertar=1;
	  if($db_per->permiso==2)
	      $borrar=1;
	  if($db_per->permiso==3)
	      $editar=1;
	  if($db_per->permiso==4)
	      $buscar=1;
	  if($db_per->permiso==5)
	      $exportar=1;
	  if($db_per->permiso==6)
	      $borrarlogico=1;
	  if($db_per->permiso==7)
	      $consultar=1;
	 }
	 $db_per->close();
?>