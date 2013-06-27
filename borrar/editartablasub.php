<? 
 $tablaoriginal = $_POST['nombretabla'];
?>

<div id="centro">
<div id="loginPan_v2">
<div class="cabecera_editar" width="600">Editar <?=$_POST['descripcion']?></div>
<form name="frm" action="aplicacion.php" method="post">

<table border="0" cellspacing="0" cellpadding="0">
  </tr>
  <?php
  $dbu = new Database();
  $query = "SELECT * FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla ='".$tablaoriginal."' ORDER BY axt_id";
  $dbu->query($query);
  //echo $query;
  $tablaforma = "";
  $nombre_campos_tabla = "";
  while($dbu->next_row())
  {
    $v_id =$dbu->axt_id;
    $v_nombre_campo = $dbu->axt_nombre_campo;
    $v_campo_es_id = $dbu->axt_campo_es_id;
    $v_tipo_campo = $dbu->axt_tipo_campo;
    $v_tabla_relacion = $dbu->axt_tabla_relacion;
    $v_campo_relacion = $dbu->axt_campo_relacion;
    $v_campo_imprimir = $dbu->axt_campo_imprimir;
    $v_campo_idioma = $dbu->axt_txr_idioma;
    $v_campo_visualizar=$dbu->axt_campo_visual;
	$label = $dbu->axt_rotulo;
	$tipo_archivo = $dbu->axt_txa_id;
	if($v_campo_es_id==1)
	    $campo_id = $v_nombre_campo;
    $query_edit="SELECT ".$v_nombre_campo." FROM ".$tablaoriginal." WHERE ".$campo_id."='".$_POST['v_id']."';";
	$db2 = new Database();
	$db2->query($query_edit);
    $db2->next_row();
	$valor = $db2->$v_nombre_campo;
	switch($v_tipo_campo)
    {
	    case "text":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo size=55 value='$valor'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "textareas":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><textarea name=".$v_nombre_campo." cols='50' rows='5'>".$valor."</textarea></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "select":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  if($v_tabla_relacion=="cargos" || $v_tabla_relacion=="cargos")
					   $query_select ="SELECT $v_campo_relacion,CONCAT(c.emp_nombre, ' - ',  b.dxe_nombre, ' - ', a.car_nombre ) $v_campo_imprimir
											FROM cargos a
											JOIN dep_empresa b ON a.`car_dxe_id` = b.dxe_id AND a.car_estado=1
											JOIN empresa c ON c.`emp_ip` = b.dxe_emp_id AND dxe_estado=1";
					  if($v_tabla_relacion=="dep_empresa")
					      $query_select ="SELECT a.dxe_id $v_campo_relacion, CONCAT( b.emp_nombre, ' - ', a.dxe_nombre ) $v_campo_imprimir
										    FROM `dep_empresa` a
										    JOIN empresa b ON a.dxe_emp_id = b.emp_ip";
					  else
         			    $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1 order by $v_campo_imprimir";
					  
					  //echo $query_select;
					  $tablaforma .= "<td><select name='$v_nombre_campo'>";
					  $tablaforma .=  "<option value='0' selected>- Seleccione una Opcion -</option>\n";
					  $db3 = new Database();
					  $db3->query($query_select);
					  while($db3->next_row())
					  {
						  $vid = $db3->$v_campo_relacion;
						  $vnombre = $db3->$v_campo_imprimir;
            			  if ($vid==$valor)
						     $tablaforma.="<option selected value=$vid>".strtoupper($vnombre)."</option>\n";
						  else
						     $tablaforma.="<option value=$vid>".strtoupper($vnombre)."</option>\n";
					  }
					  
					  $tablaforma.="</select></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
			case "numero":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo value='$valor' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
	    
	}  
  }//End while admin_tablas1
  echo $tablaforma;
  $nomcampos = $nombre_campos_tabla."".$_POST['campousu']."|N,".$_POST['campofechahora']."|S";
  ?>
</table> <p>&nbsp;</p>

<input name="editar" type="submit" class="button" value="Editar"/>
<input type="hidden" name="n" value="3">
<input type="hidden" name="nombretabla" value="<?=$tablaoriginal?>">
<input type="hidden" name="tablapadre" value="<?=$_POST['tablapadre']?>">
<input type="hidden" name="v_id" value="<?=$_POST['idpadre']?>">
<input type="hidden" name="nombre_campos_tabla" value="<?=$nomcampos?>">
<input type="hidden" name="campo_id" value="<?=$campo_id?>">
<input type="hidden" name="confirmacion" value="2">
<input type="hidden" name="<?=$_POST['campousu']?>" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="<?=$_POST['campofechahora']?>" value="<?=$datetime?>">
<input type="hidden" name="b" value="1">
<input type="hidden" name="idaxm" value="<?=$_POST['idaxm']?>">
<input type="hidden" name="submenu" value="<?=$_POST['submenu']?>">
<input type="hidden" name="camposub" value="<?=$_POST['camposub']?>">
<input type="hidden" name="id_edi" value="<?=$_POST['v_id']?>">

</form>
</div>
<br class="clear" />
</div>
<br class="clear" />

