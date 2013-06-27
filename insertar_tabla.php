<? //print_r($_POST);
//include "conf/clave.php";
$txt_dxe_id = $_POST['txt_dxe_id'];
$sqee = "SELECT dxe_id,dxe_nombre FROM ".$t_dep_empresa." WHERE dxe_id=".$txt_dxe_id." ORDER BY dxe_nombre;";
$sqlcc = "SELECT DISTINCT(a.car_id), a.car_nombre 
                 FROM ".$t_cargos." a
                 JOIN ".$t_usuario." b ON a.car_id = b.usu_car_id
                 WHERE a.car_dxe_id =".$txt_dxe_id." ORDER BY a.car_nombre;";
$PSqlsin = "SELECT usu_id, usu_corto FROM usuario WHERE 1=2 AND usu_estado=1 ORDER BY usu_corto;";
   ?>

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
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#pxt_car_id").html(data);})
	});
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#txt_car_id").html(data);})
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
function controlar(valor)
{  
   alert(valor);
   if(valor>31){
      alert('NOO');
	  return false;}
} 

</script>
<div id="centro">
<div id="loginPan_v2">
<div class="cabecera_editar">Nuevo Registro <?=$_POST['descripcion']?></div>
<form name="frm" action="aplicacion.php" method="post">
<? $tablaoriginal = $_POST['nombretabla'];
   //$tablaoriginal = "tramite_tipo";
   if($tablaoriginal=="tramite_pasos")
   {
      $sql = "SELECT txt_tmaximo FROM tramite_tipo WHERE txt_id=".$_POST['idpadre'].";";
	  $tiempomaximo = $Gen->GetUnDato("txt_tmaximo",$sql);
	  echo "TIEMPO MAXIMO TIPO DE TRAMITE ES:  ".$tiempomaximo." DIAS.<BR>" ;
	  $sqql = "SELECT SUM(pxt_tmpolimite) suma FROM tramite_pasos WHERE pxt_txp_id=1 AND pxt_estado=1 AND pxt_txt_id =".$_POST['idpadre'].";";
	  $tiempopasos = $Gen->GetUnDato("suma",$sqql);
	  $tiemporestante = $tiempomaximo - $tiempopasos;
	  if($tiemporestante>0)
	     echo "TIEMPO RESTANTE: ".$tiemporestante." DIAS.";
	  if($tiemporestante==0)
	  {
	      $banpos = 1;
		  $sqlw = "SELECT DISTINCT txp_id,txp_nombre FROM ".$t_tramite_prefijo." where txp_estado=1 AND txp_id>1 order by txp_nombre;";
		  $tiemporestante = 365;
	  }
	  else
	  {
	     $banpos = 0;
		 $sqltt = "SELECT DISTINCT txp_id,txp_nombre FROM ".$t_tramite_prefijo." where txp_estado=1 AND txp_id=1 order by txp_nombre;";
	  }
   }
?>
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
					  $tablaforma.="<td><textarea name=".$v_nombre_campo." cols='50' rows='5' Id='TAestado' onkeydown='agrandar(event)'></textarea></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
		case "dias":
					  $tablaforma .= '<tr>
    <td><label class="codigo">D&iacute;a de la Semana<label></td>
    <td colspan="3"><table width="100%" border="0">
      <tr>
        <td><input class="dias" type="checkbox" name="lun" value="32" /><label class="num">Lunes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="mar" value="16"/><label class="num">Martes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="mier" value="8"/><label class="num">Mi&eacute;rcoles</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="jue" value="4"/><label class="num">Jueves</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="vie" value="2"/><label class="num">Viernes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="checkbox" name="sab" value="1"/><label class="num">S&aacute;bado</label></td>
      </tr>
    </table></td>
  </tr>';
  $tablaforma .='<input type="hidden" name="txt_dias" value="99">';
					  $nombre_campos_tabla .= "txt_dias|S,";
					  break;
		case "repite":
					  $tablaforma .= '<tr><td valign="top"><input class="nume" type="checkbox" name="txt_repite" value="S"/><label class="num"><font color="#610B0B"><b>Se repite?</b></font></label></td>
                                           <td><label class="codigo"><font color="#610B0B"><b>Numero de Veces</b></font></label><input class="num" name="txt_veces" type="number" min="1" ></td></tr>';
					  $nombre_campos_tabla .= $v_nombre_campo."|S,txt_veces|N,";
					  break;
		case "select":
		         $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
				 $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1"; 
				 //echo $query_select;
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
		case "seltipo":
		        $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
				$clasedeempresa = $Gen->GetUnDato("txe_ext_id","SELECT txe_ext_id FROM tipo_empresacliente WHERE txe_id=".$_POST['idpadre']);
		        $query_select = "SELECT ext_id,ext_nombre FROM empresas_tipo WHERE ext_estado=1;"; 
				$tablaforma .= "<td>".$Gen->ComboBox($query_select,$v_campo_relacion,$v_campo_imprimir,$v_nombre_campo,$clasedeempresa)."<td><tr>";
				$nombre_campos_tabla .= $v_nombre_campo."|S,";
		        break;
	    case "selectt":
		         $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
		         $query_select = "SELECT DISTINCT $v_campo_relacion,$v_campo_imprimir FROM $v_tabla_relacion where $v_campo_visualizar=1"; 
				 if($v_campo_imprimir=="txf_nombre")
			        $query_select .= " order by txf_dias"; 
				 else
				    $query_select .= " order by $v_campo_imprimir";
				 if($v_nombre_campo=="pxt_txp_id" && $banpos==1)
				 {
				    $query_select = $sqlw;
					$pre = 2;
				 }
				 if($v_nombre_campo=="pxt_txp_id" && $banpos==0)
				 {
				  $query_select = $sqltt;
				  $pre = 1;
				 }
			     //echo $query_select;
		         $tablaforma .= "<td>".$Gen->ComboBox($query_select,$v_campo_relacion,$v_campo_imprimir,$v_nombre_campo,$pre)."<td><tr>";
		         $nombre_campos_tabla .= $v_nombre_campo."|S,";
		         break;
	     
		    case "numero":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo value='$valor' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
			 case "check":
					  $tablaforma .= '<tr><td valign="top"><input class="nume" name="'.$v_nombre_campo.'" type="checkbox" value="S"/><label class="num">Ultimo d&iacute;a mes  </td><td><font color="#610B0B">Si es seleccionada esta opci&oacute;n, el segundo d&iacute;a de la quincena es el &uacute;ltimo d&iacute;a del mes.</font></label></td>';
					  $tablaforma.='</tr>';
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
			 case "quin":
					  require_once("tipo.php");
					  break;
		    case "numeror":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."</label></td>";
					  $tablaforma.="<td><input type='number' required name=".$v_nombre_campo." max='".$tiemporestante."' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
			 case "tiempohoras":
					  $tablaforma .= "<tr><td><label>".$Gen->limpiarCaracteresEspeciales($label)."&nbsp;(Dias)</label></td>";
					  $tablaforma.="<td><input type=text name=$v_nombre_campo value='$valor' onkeypress='return validarnumero(event);'></td></tr>";
					  $nombre_campos_tabla .= $v_nombre_campo."|S,";
					  break;
			case "cargos":
			         $tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';
				 $tablaforma .= "<tr><td><label>Sede Grupo Alianza:</label></td>";   
				 $tablaforma .= "<td>";
				 $sql1 = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
				 $tablaforma .= $Gen->ComboBox($sql1,"sede_id","sede_nombre","sede");
				 $tablaforma .= "</td></tr>";
				 $tablaforma .= '<tr><td><label>Departamento Grupo Alianza:</label></td>
						 <td><select name="dep" id="dep" required><option selected value="0">SELECCIONE</option>
			     </select></td></tr>';
				 $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
			     <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'"><option selected value="0">SELECCIONE</option>
			     </select><td><tr>';
				  $nombre_campos_tabla .= $v_nombre_campo."|S,";
			  break;
		    case "cargostipo":
			     /*$tablaforma .= '<tr><td colspan="2" align="center" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#8F0707; font-weight:bolder;padding-top:5px;">****Para seleccionar el '.$Gen->limpiarCaracteresEspeciales($label).'****</td></tr>';
				 $tablaforma .= "<tr><td><label>Sede Grupo Alianza:</label></td>";   
				 $tablaforma .= "<td>";
				 $sql1 = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
				 $tablaforma .= $Gen->ComboBox($sql1,"sede_id","sede_nombre","sede");
				 $tablaforma .= "</td></tr>";*/
				 $tablaforma .= '<tr><td><label>Departamento:</label></td>
						         <td>'.$Gen->ComboBoxreq($sqee, dxe_id,dxe_nombre,txt_dxe_id,$txt_dxe_id).'</td></tr>';
				 $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
			                         <td>'.$Gen->ComboBoxreq($sqlcc, car_id,car_nombre,pxt_car_id,0,"onchange='pxt_res_idcambia(this);ocultar(this)'").'<td><tr>';
				 $tablaforma .= '<tr><td><label>Usuario Responsable</label></td><td>'.$Gen->ComboBoxreq($PSqlsin, "usu_id","usu_corto","pxt_res_id").'</td></tr>';
				 $Gen->Sincronice2Combos("pxt_car_id","pxt_res_id","usuario",0,"usu_car_id","usu_id","usu_corto");
				  $nombre_campos_tabla .= $v_nombre_campo."|N,pxt_res_id|N,";
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
			         $tablaforma .= "<tr><td><label>Sede Grupo Alianza</label></td>";
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
		                 $tablaforma .= "<tr><td><label>Empresas Propias</label></td>";
				 $tablaforma .= "<td>";
				 $sql12 = "SELECT exa_id,exa_nombre FROM alianza_emp WHERE exa_estado=1;";
				 $tablaforma .= $Gen->ComboBox($sql12,"exa_id","exa_nombre","empresal");
				 $tablaforma .= "</td></tr>";
				 $tablaforma .= '<tr><td><label>Sedes Empresa Propia:</label></td>
						 <td><select name="sedal" id="sedal"><option selected value="0">SELECCIONE</option>
			                         </select></td></tr>';
				 $tablaforma .= '<tr><td><label>'.$Gen->limpiarCaracteresEspeciales($label).'</label></td>
			                             <td><select name="'.$v_nombre_campo.'" id="'.$v_nombre_campo.'"><option selected value="0">SELECCIONE</option>
			                             </select><td><tr>';
				 $nombre_campos_tabla .= $v_nombre_campo."|S,";
		           break; 
	} //End switch 
  }//End while admin_tablas1
  $nombre_campos_tabla .= $_POST['campoequipo']."|S,";
  echo $tablaforma;
  ?>
</table> <p>&nbsp;</p>

<input name="crear" type="submit" class="button" value="Crear"/>
<input type="hidden" name="n" value="3">
<input type="hidden" name="b" value="2">
<input type="hidden" name="nombretabla" id="nombretabla" value="<?=$tablaoriginal?>">
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


