
<?php //print_r($_POST);
     
     if(isset($_POST['id']) && $_POST['id']>0)
     {   //Si existe id del tramite crea las variables de session
	     $p = $Tra->GetDatosTramite($_POST['id']);
		 $_SESSION['consecutivo'] = $p[0];
		 $_SESSION['departamento'] = $p[1];
		 $_SESSION['ciudad'] = $p[2];  
		 
		 $nn = 42;
		 
     }
	 else
	 {   //Si no existe destruye las variables de session
	     unset($_SESSION['consecutivo']);
	     unset($_SESSION['departamento']);
	     unset($_SESSION['ciudad']);  
		 $nn = 41;
	 }
     //print_r($p);
     if($p[17]>0)
	 $none = "block";
     else
	 $none = "none";
     if($p[5]=="")
        $p[5] = "SELECCIONE";
     if($p[7]=="")
        $p[7] = "SELECCIONE";
     if($p[15]=="")
        $p[15] = "SELECCIONE";
     if($p[16]=="")
        $p[16] = "SELECCIONE";
?>
<script>
$(document).ready(function(){
	$("#empresa").change(function(){
		$.post("combos/carga_select22.php",{ id:$(this).val() },function(data){$("#sede").html(data);})
	});
	$("#sede").change(function(){
		$.post("combos/carga_select33.php",{ id:$(this).val() },function(data){$("#tra_axe_id").html(data);})
	});
	$("#sedeempresa").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#depempresa").html(data);})
	});
	$("#depempresa").change(function(){
		$.post("combos/carga_select5.php",{ id:$(this).val() },function(data){$("#txr_usuasig").html(data);})
	});
	
})
</script>
<script>
function vacio(q)
{
    for ( i = 0; i < q.length; i++ ) { //la funcion q.length devuelve el tamaño de la palabra contenia por el textbox
	  if ( q.charAt(i) != " " ) {//la funcion q.charAt nos deuelve el caracter contenido en la posicion i de la variable q
		return true
	  }
	}
 return false;
}
function validar()
{
    if(document.frmcreare.depto_id.value==0)
	{
	    alert("Debe seleccionar el Departamento Tramite.");
		document.frmcreare.depto_id.focus();
		return false;
	}
	if(document.frmcreare.tra_ciu_id.value==0)
	{
	    alert("Debe seleccionar la ciudad.");
		document.frmcreare.tra_ciu_id.focus();
		return false;
	}
	if(document.frmcreare.tra_axe_id.value==0)
	{
	    alert("Debe seleccionar el Departamento de la Empresa Propia.");
		document.frmcreare.tra_axe_id.focus();
		return false;
	}
	if(document.frmcreare.tra_txt_id.value==0)
	{
	    alert("Debe seleccionar el Tipo de Tramite.");
		document.frmcreare.tra_txt_id.focus();
		return false;
	}
	if(document.frmcreare.tra_nombre.value==0)
	{
	    alert("Debe ingresar el Nombre de Tramite.");
		document.frmcreare.tra_nombre.focus();
		return false;
	}
	if(document.frmcreare.txr_usuasig.value==0)
	{
	   alert("Debe seleccionar el Usuario.");
	   document.frmcreare.txr_usuasig.focus();
	   return false;
	}
	else
	{
	    document.frmcreare.submit();
	    return true; 
	}
}
</script>
<div id="loginPan_vtres">
<form name="frmcreare" action="aplicacion.php" method="post">
<div class="cabecera"></div>
<table width="557" border="0">
<td colspan="2" ><table width="518">
  <tr><td width="419"><a href="imprimir-tramite.php?id=<?=$_POST['id']?>" target="blank"><img src="imagenes/ico.imprimir.png" alt="impresion informacion basica del tramite" title="impresion informacion basica del tramite"></a></td>
  <td width="87"><? if($_SESSION['usu_per_id']<5){?><a href="aplicacion.php?n=4&new=1" class="cabecera" title="nuevo registro">Nuevo</a><? } ?></td>
  </tr></table></td>
  <tr>
    <td width="162"><label>Consecutivo <?=$Tra->tooltip("consecutivo");?></label></td>
    <td width="353"><b><font color="#454545"><?=$p[0]?></font></b></td>    
  </tr>
  <tr>
    <td><label>Departamento (País)</label></td>
    <td><?php $PSql = "SELECT dep_id,dep_nombre FROM $t_departamento WHERE dep_estado=1;";
	    echo $Gen->ComboBoxreq($PSql,"dep_id","dep_nombre","depto_id",$p[1],"autofocus onchange='tra_ciu_idcambia(this);ocultar(this)'"); ?></td>
  </tr>
  <tr>
    <td><label>Ciudad</label></td>
    <td><?php if($p[2]>0)
                   $PSql = "SELECT ciu_id,ciu_nombre FROM $t_ciudad WHERE ciu_estado=1 ORDER BY ciu_nombre;";
              else
                  $PSql = "SELECT ciu_id,ciu_nombre FROM $t_ciudad WHERE 1=2 AND ciu_estado=1 ORDER BY ciu_nombre;";
	    echo $Gen->ComboBoxreq($PSql,"ciu_id","ciu_nombre","tra_ciu_id",$p[2]); ?>
		<?php $Gen->Sincronice2Combos("depto_id","tra_ciu_id","ciudad",0,"ciu_dep_id","ciu_id","ciu_nombre");?></td>
  </tr>
  <tr>
    <td><label>Empresa Alianza <?=$Tra->tooltip("empresalianza");?></label></td>
    <td><?php $PSql = "SELECT exa_id,exa_nombre FROM alianza_emp WHERE exa_estado=1 ORDER BY exa_nombre;";
	    echo $Gen->ComboBox($PSql,"exa_id","exa_nombre","empresa",$p[3],"onchange='doc_ciu_idcambia(this);ocultar(this)'"); ?></td>
  </tr>
  <tr>
    <td><label>Sede Empresa Alianza <?=$Tra->tooltip("sedealianza");?></label></td>
    <td><select name="sede" id="sede">
        <option selected value="0"><?=strtoupper($p[5])?></option>
	</select></td>
  </tr>
  <tr>
    <td><label>Depto Empresa Alianza <?=$Tra->tooltip("deptoalianza");?></label></td>
    <td><select name="tra_axe_id" id="tra_axe_id">
        <option selected value="<?=$p[6]?>"><?=strtoupper($p[7])?></option>
	</select></td>
  </tr>
  <tr>
    <td><label>Tipo Tr&aacute;mite  <?=$Tra->tooltip("tipotramite");?></label></td>
    <td><?php $PSql = "SELECT txt_id,txt_nombre FROM $t_tramite_tipo WHERE txt_estado=1;";
	               echo $Gen->ComboBoxreq($PSql, txt_id,txt_nombre,tra_txt_id,$p[8]); ?></td>
    <td></a></td>
  </tr>
  <tr>
    <td><label>Nombre del Tr&aacute;mite <?=$Tra->tooltip("nombretramite");?></label></td>
    <td><input name="tra_nombre" type="text" value="<?=strtoupper($p[9])?>" required/> </td>
    <td></td>
  </tr>
  <tr>
    <td><label>Categor&iacute;a Tr&aacute;mite <?=$Tra->tooltip("categoria");?></label></td>
    <td><?php $PSql = "SELECT cxt_id,cxt_nombre FROM $t_tramite_categoria WHERE cxt_estado=1;";
	               echo $Gen->ComboBox($PSql, cxt_id,cxt_nombre,tra_cxt_id,$p[10]); ?></select></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><label>Tipo Origen Tr&aacute;mite <?=$Tra->tooltip("origen");?></label></td>
    <td><?php $PSql = "SELECT txo_id,txo_nombre FROM $t_tramite_tipo_origen WHERE txo_estado=1;";
	               echo $Gen->ComboBox($PSql, txo_id,txo_nombre,tra_txo_id,$p[11]); ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><label>Prioridad Tr&aacute;mite <?=$Tra->tooltip("prioridad");?></label></td>
    <td><select name="tra_prioridad"><option value="0">SELECCIONE</option>
	                                 <option value="1">1  MUY URGENTE (INAPLAZABLE)</option>
	            <? for($i=2;$i<6;$i++) {
				     if ($p[12]==$i)
					    $selected = "selected";
					 else 
					   unset($selected);?>
				
	                <option value="<?=$i?>" <?=$selected?>><?=$i?></option>
					<? } ?>
	</select></td>
    <td>&nbsp;</td>
  </tr>
  <!--<tr>
    <td><label>Observaciones Trámite:</label></td>
    <td><textarea name="tra_observaciones" Id="TAestado" onkeydown="agrandar(event)"></textarea></td>
    <td>&nbsp;</td>
  </tr>-->
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </table>
  <?php if($_SESSION['usu_per_id']<5) { ?>
  </table><!--<div class="cabecera" id="row1" onClick="cambiarDisplay('row2')" style="cursor:pointer">-->
  <tr>
    <td colspan="2"><br><div class="cabecera" id="row1">ASIGNACION</div></td>
    </tr>
	<tr>
	<td colspan="2"><table id="row2" >
  <tr>
    <td><label>Sede Empresa</label></td>
    <td><?php $PSql = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
	    echo $Gen->ComboBox($PSql,"sede_id","sede_nombre","sedeempresa",$p[16]); ?></td>
  </tr><tr>
    <td><label>Departamento</label></td>
    <td><select name="depempresa" id="depempresa" >
        <option selected value="<?=$p[14]?>"><?=strtoupper($p[15])?></option>
	</select></td>
  </tr>
  <tr>
    <td><label>Cargo - Usuario</label></td>
    <td><select name="txr_usuasig" id="txr_usuasig">
        <option selected value="<?=$p[20]?>"><?=strtoupper($p[19])?></option>
	</select></td>
  </tr>
  <tr>
    <td><label>Observaciones</label></td>
    <td><textarea name="tra_observaciones"><?=utf8_decode(strtoupper($p[13]))?></textarea></td>
  </tr></table></td></tr>
<tr>
    <td colspan="2">&nbsp;</td>
    </tr>
</table>
  <?php } ?>
  <table>
  <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
</table>
<?php if(isset($_POST['id']) && $_POST['id']>0)
     { 
	     echo "<input type='hidden' name='idedi' value='".$_POST['id']."'>";
		 echo "<input type='hidden' name='tra_consecutivo' value='".$p[0]."'>";
	 }?>
	 <? if($_SESSION['usu_per_id']<5){ // Si el Usuario es del Grupo Alianza?>
<input name="input" type="button" class="button" value="Guardar" onclick="validar();"/>
<input name="input" type="reset" class="button" value="Limpiar" />
<? } ?>
<input type="hidden" name="n" value="<?=$nn?>">
<input type="hidden" name="tra_usu_id" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="tra_equipo" value="<?=$Gen->nombreequipo()?>">
<input type="hidden" name="tra_consecutivo" value="0">
<input type="hidden" name="tra_ext_id" value="1"><!--TRAMITE ASIGNADO-->
<input type="hidden" name="txo_usu_id" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="txo_tra_id" value="0">
<input type="hidden" name="txo_observaciones" value="0">
<input type="hidden" name="banconse" id="banconse" value="<?=$p[0]?>">	
</form>
 <br class="clear" /></div>
 