<? 
 require_once("conf/clave.php");
 //print_r($_POST);
 if(isset($_POST['tablaoriginal']) && $_POST['tablaoriginal'])
    $tablaoriginal = $_POST['tablaoriginal'];
 if(isset($_GET['tablaoriginal']) && $_GET['tablaoriginal'])
    $tablaoriginal = $_GET['tablaoriginal'];
 if(isset($_GET['v_id']) && $_GET['v_id'])
     $_POST['v_id'] = $_GET['v_id'];
 //Para la paginacion
 if(isset($_GET['tablapadresub']) && $_GET['tablapadresub'])
    $tablaoriginal = $_GET['tablapadresub'];
 if(isset($_GET['paginasub']) && $_GET['paginasub'])
     $paginasub = $_GET['paginasub'];
    
 $tablaoriginal = strtolower($tablaoriginal);
 $tablaenvia = $tablaoriginal;
?>
<link rel="stylesheet" href="kalendar/kalendar.css" type="text/css" media="screen" />
<script language="javascript" type="text/javascript" src="kalendar/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="kalendar/jquery.kalendar.min.js"></script>
<script language="javascript" type="text/javascript">
	$(document).ready(function(){
		$(".test").kalendar();
	});
</script>
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
	$("#txt_sede").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#txt_dxe_id").html(data);})
	});
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#car_revisa_id").html(data);})
	});
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#exc_res_id").html(data);})
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
<?php
  $textodescripcion = $Gen->GetUnDato("axm_descripcion","SELECT axm_descripcion FROM admin_menu WHERE axm_nombre_tabla='".$tablaoriginal."';");
?>
<div id="centro">
<div id="loginPan_v2">
<div class="cabecera_editar" width="600">Editar <?=$Gen->limpiarCaracteresEspeciales($textodescripcion)?></div>

<form name="frm" action="" method="post" target="_self">
<table border="0" cellspacing="0" cellpadding="0">
  </tr>
  <?php
  $dbu = new Database();
  $query = "SELECT * FROM ".$tabla_admin_tablas." WHERE axt_nombre_tabla ='".$tablaoriginal."' ORDER BY axt_id";
  $dbu->query($query);
  //echo $query; exit;
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
    $v_vampo_ver = $dbu->axt_visualizar;
    $label = $dbu->axt_rotulo;
    $tipo_archivo = $dbu->axt_txa_id;
    if($v_campo_es_id==1)
	 $campo_id = $v_nombre_campo;
   $query_edit="SELECT ".$v_nombre_campo." FROM ".$tablaoriginal." WHERE ".$campo_id."='".$_POST['v_id']."';";
	//echo $query_edit; 
	
   $db2 = new Database();
   $db2->query($query_edit);
   $db2->next_row();
   $valor = $db2->$v_nombre_campo;
	switch($v_tipo_campo)
       {
	     case "text":
			  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
			  $tablaforma.="<td><input type=text name='".$v_nombre_campo."' size=55 value='$valor'></td></tr>";
			  $nombre_campos_tabla .= $v_nombre_campo."|S,";
			  $ver = $valor;
			  break;
		 case "required":
			  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
			  $tablaforma.="<td><input type=text name=$v_nombre_campo size=55 value='$valor' required></td></tr>";
			  $nombre_campos_tabla .= $v_nombre_campo."|S,";
			  $ver = $valor;
			  break;
	    case "email":
			  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
			  $tablaforma.="<td><input type=email name='".$v_nombre_campo."'size=55 value='".$valor."'></td></tr>";
			  $nombre_campos_tabla .= $v_nombre_campo."|S,";
			  $ver = $valor;
			  break;
		case "textareas":
			  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
			  $tablaforma.="<td><textarea name='".$v_nombre_campo."' cols='50' rows='5' Id='TAestado' onkeydown='agrandar(event)'>".utf8_decode($valor)."</textarea></td></tr>";
			  $nombre_campos_tabla .= $v_nombre_campo."|S,";
			  break;
		case "select":
		         $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
				 if($v_tabla_relacion=="tramite_frecuencia")
				    $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1 order by txf_dias;";
				 else
				    $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1 order by $v_campo_imprimir;";
		         $tablaforma .= "<td>".$Gen->ComboBox($query_select,$v_campo_relacion,$v_campo_imprimir,$v_nombre_campo,$valor)."<td><tr>";
		         $nombre_campos_tabla .= $v_nombre_campo."|S,";
		         break;
		case "selectt":
		         $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
		         $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1 order by $v_campo_imprimir";
		         $tablaforma .= "<td>".$Gen->ComboBox($query_select,$v_campo_relacion,$v_campo_imprimir,$v_nombre_campo,$valor)."<td><tr>";
		         $nombre_campos_tabla .= $v_nombre_campo."|S,";
		         break;
	     case "numero":
		         $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
		         $tablaforma.="<td><input type=text name=$v_nombre_campo value='$valor' onkeypress='return validarnumero(event);'></td></tr>";
		         $nombre_campos_tabla .= $v_nombre_campo."|S,";
		         break;   
	    case "numeror":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text required name=".$v_nombre_campo." value='".$valor."' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "dias":
		             $numero = $Gen->GetUnDato("txt_dias","SELECT txt_dias FROM tramite_tipo WHERE txt_id=".$_POST['v_id'].";");
					 $binario = decbin($numero);
					 $letra = preg_split('//', $binario, -1, PREG_SPLIT_NO_EMPTY); 
					 $lunes = $letra[0];
					 if($lunes==1)
					    $checked1 = "checked";
					 else
					    unset($checked1);
					 $martes = $letra[1];
					 if($martes==1)
					    $checked2 = "checked";
					 else
					    unset($checked2);
					 $miercoles = $letra[2];
					 if($miercoles==1)
					    $checked3 = "checked";
					 else
					    unset($checked3);
					 $jueves = $letra[3];
					 if($jueves==1)
					    $checked4 = "checked";
					 else
					    unset($checked4);
					 $viernes = $letra[4];
					 if($viernes==1)
					    $checked5 = "checked";
					 else
					    unset($checked5);
					 $sabado = $letra[5];
					 if($sabado==1)
					    $checked6 = "checked";
					 else
					    unset($checked6);
					  $tablaforma .= '<tr>
    <td><label class="codigo">D&iacute;a de la Semana<label></td>
    <td colspan="3"><table width="100%" border="0">
      <tr>
        <td><input class="dias" type="checkbox" name="lun" value="32" '.$checked1.'/><label class="num">Lunes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="mar" value="16" '.$checked2.'/><label class="num">Martes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="mier" value="8" '.$checked3.'/><label class="num">Mi&eacute;rcoles</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="jue" value="4" '.$checked4.'/><label class="num">Jueves</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="vie" value="2" '.$checked5.'/><label class="num">Viernes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="sab" value="1" '.$checked6.'/><label class="num">S&aacute;bado</label></td>
      </tr>
    </table></td>
  </tr>';
  $tablaforma .='<input type="hidden" name="txt_dias" value="99">';
					  $nombre_campos_tabla .= "txt_dias|S,";
					  break;
		case "repite":
		              if($valor=='S')
					    $chec = "checked";
					  else
					     unset($chec);
					  $veces = $Gen->GetUnDato("txt_veces","SELECT txt_veces FROM tramite_tipo WHERE txt_id=".$_POST['v_id'].";");
					  $tablaforma .= '<tr><td valign="top"><input class="nume" type="checkbox" name="txt_repite" value="S" '.$chec.'/><label class="num"><font color="#610B0B"><b>Se repite?</b></font></label>
                                           <td><label class="codigo"><font color="#610B0B"><b>Numero de Veces</b></font></label><input class="num" name="txt_veces" type="number" min="0" value="'.$veces.'"></td></tr>';
					  $nombre_campos_tabla .= $v_nombre_campo."|S,txt_veces|N,";
					  break;
		case "check":
					  if($valor=='S')
					    $chec = "checked";
					  else
					     unset($chec);
					  $tablaforma .= '<tr><td valign="top"><input class="nume" name="'.$v_nombre_campo.'" type="checkbox" value="S" '.$chec.'/><label class="num">Ultimo d&iacute;a mes</label></td>';
					  $tablaforma.='</tr>';
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
			 case "quin":
					  require_once("tipoeditar.php");
					  break;
	    case "cargos": $dbc = new Database();
		           if($tablaoriginal=='empresa_cliente')
			   {
			           $sqlc = "SELECT e.car_nombre, e.car_dxe_id, b.dxe_nombre, c.sede_nombre, d.emp_id, d.emp_nombre
						   FROM empresa_cliente a
						   JOIN cargos e ON a.exc_res_id = e.car_id
						   JOIN dep_empresa b ON e.car_dxe_id = b.dxe_id
						   JOIN empresa_sedes c ON b.dxe_sede_id = c.sede_id
						   JOIN empresa d ON c.sede_emp_id = d.emp_id
						   WHERE a.exc_res_id =".$valor.";";
				 $dbc->query($sqlc);
                                 $dbc->next_row();	
			         $idemp = $dbc->emp_id;
			         $sede = $dbc->sede_nombre;
			         $depto = $dbc->dxe_nombre;
			         $revisa = $dbc->car_nombre;	
			         $dbc->close();
			   }
			   if($tablaoriginal=='cargos')
			   {
				   $sqlc = "SELECT a.car_nombre, a.car_dxe_id, b.dxe_id,b.dxe_nombre, c.sede_nombre, d.emp_id,d.emp_nombre
							FROM cargos a
							JOIN dep_empresa b ON a.car_dxe_id = b.dxe_id
							JOIN empresa_sedes c ON b.dxe_sede_id = c.sede_id
							JOIN empresa d ON c.sede_emp_id = d.emp_id
							WHERE a.car_revisa_id =".$valor.";";
				  $dbc->query($sqlc);
				  $dbc->next_row();	
				  $idemp = $dbc->emp_id;
				  $sede = $dbc->sede_nombre;
				  $depto = $dbc->dxe_nombre;
				  $id_depto = $dbc->dxe_id;
				  $revisa = $Gen->GetUnDato("car_nombre","SELECT car_nombre FROM cargos WHERE car_id=".$valor.";");	
				  $dbc->close();	
                      }	
                      //echo $sqlc;		 
                     $tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';			  
                     $tablaforma .= "<tr><td><label>Sede Alianza:</label></td>";   
		     $tablaforma .= "<td>";
		     $sql1 = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
		     $tablaforma .= $Gen->ComboBox($sql1,"sede_id","sede_nombre","sede");
		     $tablaforma .= "</td></tr>";
		     $tablaforma .= '<tr><td><label>Departamento Alianza:</label></td>
                                     <td><select name="dep" id="dep"><option selected value="'.$id_depto.'">'.strtoupper($depto).'</option>
                                     </select></td></tr>';
		     $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
                                     <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'"><option selected value="'.$valor.'">'.strtoupper($revisa).'</option>
                                     </select><td><tr>';
		     $nombre_campos_tabla .= $v_nombre_campo."|S,";
		     break;
    case "depto":
                 if($v_nombre_campo=="car_dxe_id")
		{
			 $dbc = new Database();
			 $sqlc = "SELECT b.dxe_nombre, c.sede_nombre, c.sede_id, d.emp_id,d.emp_nombre
				FROM cargos a
				JOIN dep_empresa b ON a.car_dxe_id = b.dxe_id
				JOIN empresa_sedes c ON b.dxe_sede_id = c.sede_id
				JOIN empresa d ON c.sede_emp_id = d.emp_id
				WHERE a.car_dxe_id =".$valor."
				AND car_id=".$_POST['v_id'].";";
			 $dbc->query($sqlc);
			 $dbc->next_row();	
			 $empresa = $dbc->emp_nombre;
			 $idsede = $dbc->sede_id;
			 $sede = $dbc->sede_nombre;
			 $depto = $dbc->dxe_nombre;
			 $dbc->close();
		 }
		 if($v_nombre_campo=="dxd_dxe_id")
		 {
		         $dbc = new Database();
			 $sqlc = "SELECT b.dxe_id, b.dxe_nombre, c.sede_id
				FROM depxdepal a
				JOIN dep_empresa b ON a.dxd_dxe_id = b.dxe_id
				JOIN empresa_sedes c ON b.dxe_sede_id = c.sede_id
				WHERE a.dxd_dxe_id =".$_POST['v_id'].";";
			 $dbc->query($sqlc);
			 $dbc->next_row();
                         $idsede = $dbc->sede_id;			 
			 $sede = $dbc->sede_nombre;
			 $depto = $dbc->dxe_nombre;
			 $dbc->close();
		 }
		 $tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';
		 $tablaforma .= "<tr><td><label>Sede Grupo Alianza</label></td>";
		 $tablaforma .= "<td>";
		 $sql1 = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
		 $tablaforma .= $Gen->ComboBox($sql1,"sede_id","sede_nombre","sede1",$idsede);
		 $tablaforma .= "</td></tr>";
		 $tablaforma .= '<tr><td><label>Departamento Empresa:</label></td>
                                 <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'"><option selected value="'.$valor.'">'.strtoupper($depto).'</option>
                                     </select></td></tr>';
		$nombre_campos_tabla .= $v_nombre_campo."|S,";
		break;
	    case "fechacalendario":
				  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
				  $tablaforma.="<td><input type=text name='".$v_nombre_campo."' value='".$valor."' class='test'></td></tr>";
				  $nombre_campos_tabla .= $v_nombre_campo."|S,";
				  $ver = $valor;
				  break;
	  case "tiempohoras":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."&nbsp;(Dias)</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo value='$valor' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
	  case "alianza":
		                 
				 if($v_nombre_campo=="dxd_axe_id")
		                 {
				    $sql = "SELECT b.axe_nombre, b.axe_id, c.axs_id, c.axs_nombre, d.exa_id
					FROM `depxdepal` a
					JOIN alianza_dep b ON b.axe_id = a.dxd_axe_id
					JOIN alianza_sedes c ON b.axe_axs_id = c.axs_id
					JOIN alianza_emp d ON c.axs_exa_id = d.exa_id
					WHERE dxd_axe_id =".$_POST['v_id'].";";
					$db = new Database();
					$db->query($sql);
					$db->next_row();
					$idempal = $db->exa_id;
					$sedeal = strtoupper($db->axs_nombre);
					$deptoal = strtoupper($db->axe_nombre);
					$iddeptoal = $db->axe_id;
					$db->close();
				 }
				 $tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';
		                 $tablaforma .= "<tr><td><label>Empresas Propias</label></td>";
				 $tablaforma .= "<td>";
				 $sql12 = "SELECT exa_id,exa_nombre FROM alianza_emp WHERE exa_estado=1;";
				 $tablaforma .= $Gen->ComboBox($sql12,"exa_id","exa_nombre","empresal",$idempal);
				 $tablaforma .= "</td></tr>";
				 $tablaforma .= '<tr><td><label>Sedes Empresa Propia:</label></td>
						 <td><select name="sedal" id="sedal"><option selected value="0">'.$sedeal.'</option>
			                         </select></td></tr>';
				 $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
			                             <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'"><option selected value="'.$iddeptoal.'">'.$deptoal.'</option>
			                             </select><td><tr>';
				 $nombre_campos_tabla .= $v_nombre_campo."|S,";
		           break; 
	}  
	
  }//End while admin_tablas1
  $nombre_campos_tabla .= $_POST['campoequipo']."|S,";
  echo $tablaforma; //exit;
  ?>
</table> <p>&nbsp;</p>
<input name="editar" type="submit" class="button" value="Editar"/>
<input type="hidden" name="n" value="3">
<input type="hidden" name="b" value="1">
<input type="hidden" name="confirmacion" value="2">
<input type="hidden" name="<?php echo $_POST['campoequipo']?>" value="<?php echo $_SESSION['equipo']?>">
<input type="hidden" name="nombretabla" value="<?=$tablaoriginal?>">
<input type="hidden" name="id_edi" value="<?=$_POST['v_id']?>">
<input type="hidden" name="nombre_campos_tabla" value="<?=$nombre_campos_tabla.$_POST['campousu']."|N,",$_POST['campofechahora']."|S"?>">
<input type="hidden" name="campo_id" value="<?=$campo_id?>">
<input type="hidden" name="<?=$_POST['campousu']?>" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="<?=$_POST['campofechahora']?>" value="<?=$datetime?>">
<input type="hidden" name="idaxm" value="<?=$_POST['idaxm']?>">
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
<?php if(isset($tablaoriginal) && $Gen->padre($tablaoriginal)!="")
           $tablaoriginal = $Gen->padre($tablaoriginal);?>
<input type="hidden" name="tablaoriginal" value="<?=strtoupper($tablaoriginal)?>">
</form>
</div>
<br class="clear" />
</div>
<br class="clear" />

<? 
   $cad = $Gen->submenu($tablaenvia);
   //print_r($cad);
   $_POST['submenu'] = $cad[0];
   $_POST['camposub'] = $cad[1];
   if($_POST['submenu']!=""){
     $id_padre = $_POST['v_id'];
   require_once("adminsubmenu.php");
     
?>

<? } ?>

