<? //print_r($_POST);?>

<script>
$(document).ready(function(){
	$("#empresal").change(function(){
		$.post("combos/carga_select2.php",{ id:$(this).val() },function(data){$("#sedal").html(data);})
	});
	$("#sedal").change(function(){
		$.post("combos/carga_selectdep.php",{ id:$(this).val() },function(data){$("#dxd_axe_id").html(data);})
	});
	$("#sede").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#dep").html(data);})
	});
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#car_revisa_id").html(data);})
	});
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#exc_res_id").html(data);})
	});
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#pxt_car_id").html(data);})
	});
	$("#empresa1").change(function(){
		$.post("combos/carga_select2.php",{ id:$(this).val() },function(data){$("#sede1").html(data);})
	});
	$("#sede1").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#car_dxe_id").html(data);})
	});
	$("#sede1").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#dxd_dxe_id").html(data);})
	});
})

</script>
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
	     case "fechacalendario":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo class='test'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  $ver = $valor;
					  break;
		case "text":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo ></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "required":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo required></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "email":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=email name=$v_nombre_campo ></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "textareas":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><textarea name=".$v_nombre_campo." cols='50' rows='5'></textarea></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "select":
		         $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
		         $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1"; 
			 if(isset($_POST['idpadre']) && $_POST['idpadre']>0)
			 {
			       $query_select .= " AND ".$v_campo_relacion."=".$_POST['idpadre'];
			       $tipoemp = $_POST['idpadre']; 
			 }
			 $query_select .= " order by $v_campo_imprimir";
			 //echo $query_select;
		         $tablaforma .= "<td>".$Gen->ComboBox($query_select,$v_campo_relacion,$v_campo_imprimir,$v_nombre_campo,$tipoemp)."<td><tr>";
		         $nombre_campos_tabla .= $v_nombre_campo."|S,";
		         break;
	        case "selectt":
		         $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
		         $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1"; 
			 $query_select .= " order by $v_campo_imprimir";
			 //echo $query_select;
		         $tablaforma .= "<td>".$Gen->ComboBox($query_select,$v_campo_relacion,$v_campo_imprimir,$v_nombre_campo)."<td><tr>";
		         $nombre_campos_tabla .= $v_nombre_campo."|S,";
		         break;
	     
		    case "numero":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo value='$valor' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		    case "numeror":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text required name=$v_nombre_campo value='$valor' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		    case "cargos":
			         $tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';
				 $tablaforma .= "<tr><td><label>Sede Empresa:</label></td>";   
				 $tablaforma .= "<td>";
				 $sql1 = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
				 $tablaforma .= $Gen->ComboBox($sql1,"sede_id","sede_nombre","sede");
				 $tablaforma .= "</td></tr>";
				 $tablaforma .= '<tr><td><label>Departamento Empresa:</label></td>
						 <td><select name="dep" id="dep" required><option selected value="0">SELECCIONE</option>
			     </select></td></tr>';
				 $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
			     <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'"><option selected value="0">SELECCIONE</option>
			     </select><td><tr>';
				  $nombre_campos_tabla .= $v_nombre_campo."|S,";
			  break;
		case "depto":
			      if($v_nombre_campo=="car_dxe_id")
				 {
					    $sql = "SELECT c.emp_id, c.emp_nombre, b.sede_id, b.sede_nombre, a.dxe_nombre,a.dxe_id
					 			FROM  `dep_empresa` a
								JOIN empresa_sedes b ON a.dxe_sede_id = b.sede_id
								JOIN empresa c ON b.sede_emp_id = c.emp_id
								WHERE a.dxe_id =".$_POST['idpadre']; 
						$ddb = new Database();
						$ddb->query($sql);
						$ddb->next_row();
						$idemp = $ddb->emp_id;
						$nomemp = $ddb->emp_nombre;
						$idsede = $ddb->sede_id;
						$nomsede = $ddb->sede_nombre;
						$nomdep = $ddb->dxe_nombre;
						$iddep = $ddb->dxe_id;
						$ddb->close();
				 }
				 if(!isset($nomdep))
				   $nomdep = "SELECCIONE";
				 $tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';
			         $tablaforma .= "<tr><td><label>Sedes Grupo</label></td>";
				 $tablaforma .= "<td>";
				 $sql1 = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
				 $tablaforma .= $Gen->ComboBox($sql1,"sede_id","sede_nombre","sede1",$idsede);
				 $tablaforma .= "</td></tr>";
				 $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
                                                 <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'" >
						     <option selected value="'.$_POST['idpadre'].'">'.$nomdep.'</option>
                                                 </select></td></tr>';
				 $nombre_campos_tabla .= $v_nombre_campo."|S,";
				 break;
	   
	         case "alianza":
		                 $tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';
		                 $tablaforma .= "<tr><td><label>Empresas Alianza</label></td>";
				 $tablaforma .= "<td>";
				 $sql12 = "SELECT exa_id,exa_nombre FROM alianza_emp WHERE exa_estado=1;";
				 $tablaforma .= $Gen->ComboBox($sql12,"exa_id","exa_nombre","empresal");
				 $tablaforma .= "</td></tr>";
				 $tablaforma .= '<tr><td><label>Sedes Empresa Alianza:</label></td>
						 <td><select name="sedal" id="sedal"><option selected value="0">SELECCIONE</option>
			                         </select></td></tr>';
				 $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
			                             <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'"><option selected value="0">SELECCIONE</option>
			                             </select><td><tr>';
				 $nombre_campos_tabla .= $v_nombre_campo."|S,";
		           break; 
	}  
  }//End while admin_tablas1
  $nombre_campos_tabla .= $_POST['campoequipo']."|S,";
  echo $tablaforma;
  ?>
</table> <p>&nbsp;</p>

<input name="crear" type="submit" class="button" value="Crear"/>
<input type="hidden" name="n" value="3">
<input type="hidden" name="b" value="2">
<input type="hidden" name="nombretabla" value="<?=$tablaoriginal?>">
<input type="hidden" name="nombre_campos_tabla" value="<?=$nombre_campos_tabla.$_POST['campousu']."|N"?>">
<input type="hidden" name="campo_id" value="<?=$campo_id?>">
<input type="hidden" name="<?php echo $_POST['campoequipo']?>" value="<?php echo $_SESSION['equipo']?>">
<input type="hidden" name="<?=$_POST['campousu']?>" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="idpadre" value="<?=$_POST['idpadre']?>">
<input type="hidden" name="tablapadre" value="<?=$Gen->padre($tablaoriginal)?>">
<?php if($Gen->padre($tablaoriginal)!="" && $_POST['idpadre']>0 )
         $flag=1;
      else
	 $flag = 2;?>
<input type="hidden" name="flag" value="<?=$flag?>">
<input type="hidden" name="camposub" value="<?=$_POST['camposub']?>">
<input type="hidden" name="submenu" value="<?=$tablaoriginal?>">
<input type="hidden" name="v_id" value="<?php echo $_POST['v_id'];?>">
<input type="hidden" name="idaxm" value="<?php echo $_POST['idaxm'];?>">
</form>
<form name="frmvolver" action="aplicacion.php" method="post">
<input name="crear" type="submit" class="button" value="Volver"/>
<input type="hidden" name="n" value="3">
<input type="hidden" name="b" value="3">
<input type="hidden" name="idaxm" value="<?php echo $_POST['idaxm'];?>">
<input type="hidden" name="idpadre" value="<?=$_POST['idpadre']?>">
<input type="hidden" name="tablapadre" value="<?=strtoupper($Gen->padre($tablaoriginal))?>">
<?php if($Gen->padre($tablaoriginal)!="" && $_POST['idpadre']>0 )
         $flag=1;
      else
	 $flag = 2;?>
<input type="hidden" name="flag" value="<?=$flag?>">
<?php if($Gen->padre($tablaoriginal)!="")
           $tablaoriginal = $Gen->padre($tablaoriginal);?>
<input type="hidden" name="tablaoriginal" value="<?=strtoupper($tablaoriginal)?>">
</form>
</div>
<br class="clear" />
</div>
<br class="clear" />


