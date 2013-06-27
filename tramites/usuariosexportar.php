<?php
require_once("conf/clave.php");
$nombre_reporte ="reporte_usuarios".$fecha_completa.".xls";
header ( "Content-type: application/x-msexcel" );
header ( "Content-Disposition: attachment; filename=$nombre_reporte" );
header ( "Content-Description: Generador XLS" );
?>
 <table width="2138">
 <tr>
 <td width="300"><b>Nombre</b></td>
 <td width="314"><b>Cargo</b></td>
 <td width="190"><b>Cedula</b></td>
 <td width="293"><b>E.mail corporativo</b></td>
 <td width="185"><b>E.mail personal</b></td>
 <td width="188"><b>Telefono Fijo</b></td>
 <td width="186"><b>Telefono Celular</b></td>
 <td width="165"><b>Direccion</b></td>
 <td width="87"><b>Perfil</b></td>
 <td width="186"><b>Observaciones</b></td>
 </tr>
 
 <?
   $dbux = new Database();
   $sqlu = "SELECT * FROM v_vistausu";
   if($_GET['opbus']!="")
   {
         if($_GET['opbus']!= "usu_act_id")
	    $sqlu .= " WHERE ".$_GET['opbus']." LIKE '%".$_GET['busqueda']."%'";
	 else
	    $sqlu .= " WHERE usu_act_id=0";
         
   } 
   else   
   $sqlu .=" WHERE usu_estado=1";
   $sqlu .=" ORDER BY usu_nombre";
   //echo $sqlu;
   $dbux->query($sqlu);
   while($dbux->next_row())
   { if($dbux->exc_nombre=="")
         $dbux->exc_nombre = "ALIANZA";
?>
<tr>
 <td align="left"><?=strtoupper($dbux->usu_nombre)?></td>
 <td align="center"><?=strtoupper($dbux->cargo)?></td>
 <td align="center"><?=$dbux->usu_cedula?></td>
 <td align="center"><?=$dbux->usu_emailcor?></td>
 <td align="center"><?=$dbux->usu_emailper?></td>
 <td align="center"><?=$dbux->usu_fijo?></td>
 <td align="center"><?=$dbux->usu_celular?></td>
 <td align="center"><?=$dbux->usu_dir?></td>
 <td align="center"><?=strtoupper($dbux->per_nombre)?></td>
 <td><p align="justify"><?=strtoupper($dbux->usu_obs)?></p></td>
 </tr>
 <?php } $dbux->close() ?>