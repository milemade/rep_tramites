<div id="centro">
<div id="loginPan_v2">
<div class="cabecera_editar">Nuevo Registro <?=$_POST['descripcion']?></div>
<form name="frm" action="aplicacion.php" method="post">
<? $tablaoriginal = $_POST['nombretabla']?>
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
	switch($v_tipo_campo)
    {
	    case "text":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo ></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "textareas":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><textarea name=".$v_nombre_campo." cols='50' rows='5'></textarea></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "select":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  if($v_tabla_relacion=="cargos")
					   $query_select ="SELECT $v_campo_relacion,CONCAT(c.emp_nombre, ' - ',  b.dxe_nombre, ' - ', a.car_nombre ) $v_campo_imprimir
											FROM cargos a
											JOIN dep_empresa b ON a.`car_dxe_id` = b.dxe_id AND a.car_estado=1
											JOIN empresa c ON c.`emp_ip` = b.dxe_emp_id AND dxe_estado=1";
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
						  if($_POST['v_id'] == $vid)
						     $selected = "selected";
						  else
						     unset($selected);
            			  $tablaforma.="<option value=$vid $selected>".strtoupper($vnombre)."</option>\n";
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
  ?>
</table> <p>&nbsp;</p>

<input name="crear" type="submit" class="button" value="Crear"/>
<input type="hidden" value="3" name="n">
<input type="hidden" value="<?=$tablaoriginal?>" name="nombretabla">
<input type="hidden" value="<?=$nombre_campos_tabla.$_POST['campousu']."|N"?>" name="nombre_campos_tabla">
<input type="hidden" name="campo_id" value="<?=$campo_id?>">
<input type="hidden" name="<?=$_POST['campousu']?>" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="b" value="2">
<input type="hidden" name="tablapadre" value="<?=$_POST['tablapadre']?>">
</form>
</div>
<br class="clear" />
</div>
<br class="clear" />


