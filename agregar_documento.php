<?
print_r($_SESSION);
  if(isset($_POST['iddoc']) && $_POST['iddoc']>0)
  {  //echo "ENTRA";
     $d = $Tra->GetDocumento($_POST['iddoc']);
	 //print_r($d);
	 $nn = 44;
  }
  else
  {
     $nn = 433;
  }
 
?>
<script>
$(document).ready(function(){
	$("#empresadoc").change(function(){
		$.post("combos/carga_select22.php",{ id:$(this).val() },function(data){$("#sededoc").html(data);})
	});
	$("#sededoc").change(function(){
		$.post("combos/carga_select33.php",{ id:$(this).val() },function(data){$("#doc_axe_id").html(data);})
	});doc_axe_id
	$("#doc_axe_id").change(function(){
		$.post("combos/carga_selectdxd.php",{ id:$(this).val() },function(data){$("#doc_usudestinoid").html(data);})
	});
	$("#depempresa").change(function(){
		$.post("combos/carga_select5.php",{ id:$(this).val() },function(data){$("#txt_usuasig").html(data);})
	});
	$("#claseempresa").change(function(){
		$.post("combos/carga_doc_txe_id.php",{ id:$(this).val() },function(data){$("#doc_txe_id").html(data);})
	});
	$("#doc_txe_id").change(function(){
		$.post("combos/carga_doc_exc_id.php",{ id:$(this).val() },function(data){$("#doc_exc_id").html(data);})
	});
})
function validarmasdoc()
{
   if(document.formdocu.doc_tra_id.value>0)
   {
         if(document.formdocu.depto_iden.value==0)
	     {
			alert('Debe seleccionar un Departamento del pais.');
			document.formdocu.depto_iden.focus();
			return false;
	     }
		 if(document.formdocu.doc_ciu_id.value==0)
        {
			alert('Debe seleccionar una ciudad.');
			document.formdocu.doc_ciu_id.focus();
			return false();
        }
		if(document.formdocu.doc_txd_id.value==0)
	   {
			alert('Debe seleccionar un tipo de documento.');
			document.formdocu.doc_txd_id.focus();
			return false();
	   }
	   if(document.formdocu.empresadoc.value==0)
	   {
			alert('Debe seleccionar una Empresa Propia.');
			document.formdocu.empresadoc.focus();
			return false();
	   }
	   if(document.formdocu.sededoc.value==0)
	   {
			alert('Debe seleccionar una Sede de la Empresa Propia.');
			document.formdocu.sededoc.focus();
			return false();
	   }
	   if(document.formdocu.doc_axe_id.value==0)
	   {
			alert('Debe seleccionar un Departamento de la Sede Propia.');
			document.formdocu.doc_axe_id.focus();
			return false();
	   }
	   if(document.formdocu.doc_usudestinoid.value==0 && document.formdocu.doc_usudestino.value=="")
	   {
		  alert("Debe seleccionar o ingresar un Destinatario.");
		  document.formdocu.doc_usudestinoid.focus();
		  return false;
	   }
	   if(document.formdocu.doc_usudestinoid.value==0)
	   {
	       alert('Debe seleccionar un destinatario.');
		   document.formdocu.doc_usudestinoid.focus();
		   return false;
	   }
	   if(document.formdocu.doc_usudestino.value=="" && document.formdocu.doc_usudestinoid.value==-1)
	   {
	        alert('Debe ingresar el nombre del Destinatario');
			document.formdocu.doc_usudestino.focus();
			return false;
	   }
	   if(document.formdocu.claseempresa.value==0)
	   {
	       alert('Debe seleccionar la Clase de Empresa.');
		   document.formdocu.claseempresa.focus();
		   return false;
	   }
	   if(document.formdocu.doc_txe_id.value==0)
	   {
			alert("Debe seleccionar el Tipo Empresa Remitente.");
			document.formdocu.doc_txe_id.focus();
			return false;
	   }
	   if(document.formdocu.doc_exc_id.value==0 && document.formdocu.doc_entremitente.value=="")
	   {
		   alert("Debe seleccionar una empresa o ingresar el nombre de la Entidad Remitente.");
		   document.formdocu.doc_exc_id.focus();
		   return false;
	   }
	   if(document.formdocu.doc_fecdoc.value=="")
	   {
		   alert("Debe ingresar la fecha impresa en el documento.");
		   document.formdocu.doc_fecdoc.focus();
		   return false;
	   }
	   if(document.formdocu.doc_asunto.value=="")
	   {
		   alert("Debe ingresar el asunto del documento.");
		   document.formdocu.doc_asunto.focus();
		   return false;
	   }
	   else
	   {
	      document.formdocu.submit();
	      return true;
	   }
   }
   
   else
   {
         alert('Debe ingresar o consultar un tramite para continuar!');
		 return false;
   }
   
}
</script>
<div id="loginPan_vtres" align="center">
<form name="formdocu" action="aplicacion.php" method="POST">
 <table width="557" border="0">
<td colspan="2" ><table width="518">
  <tr><td width="419"><a href="imprimir-documento-tramite.php?id=<?=$_POST['iddoc']?>" target="blank"><img src="imagenes/ico.imprimir.png" alt="impresion informacion basica del documento del tramite" title="impresion informacion basica del tramite"></a></td>
  <td width="87">&nbsp;&nbsp;</td>
  </tr></table></td>
  <tr>
      <tr>
    <td width="130"><label>Consecutivo:</label></td>
    <td width="776"><b><font color="#454545"><?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></font></b></td>
  </tr>
  <tr>
    <td><label>Departamento (Pa&iacute;s)</label></td>
    <td><?php $PSql = "SELECT dep_id,dep_nombre FROM $t_departamento WHERE dep_estado=1;";
	    echo $Gen->ComboBox($PSql,"dep_id","dep_nombre","depto_iden",$_SESSION['departamento'],"onchange='doc_ciu_idcambia(this);ocultar(this)'"); ?></select></td>
  </tr>
  <tr>
    <td><label>Ciudad</label></td>
    <td><?php  if(isset($_SESSION['ciudad']) && $_SESSION['ciudad']>0)
	              $PSql = "SELECT ciu_id,ciu_nombre FROM $t_ciudad WHERE ciu_estado=1 ORDER BY ciu_nombre;";
			   else
	              $PSql = "SELECT ciu_id,ciu_nombre FROM $t_ciudad WHERE 1=2 AND ciu_estado=1 ORDER BY ciu_nombre;";
	    echo $Gen->ComboBox($PSql, "ciu_id","ciu_nombre","doc_ciu_id",$_SESSION['ciudad']); ?>
		<?php $Gen->Sincronice2Combos("depto_iden","doc_ciu_id","ciudad",0,"ciu_dep_id","ciu_id","ciu_nombre");?></td>
  </tr>
   <?php 
      if($_SESSION['tra_axe_id']>0)
	  {
	      $Sql = "SELECT a.exa_id,b.axs_id,b.axs_nombre,c.axe_id,c.axe_nombre
		           FROM alianza_emp a
				   JOIN alianza_sedes b ON b.axs_exa_id = a.exa_id
				   JOIN alianza_dep c ON c.axe_axs_id=b.axs_id AND c.axe_id=".$_SESSION['tra_axe_id'].";";
		 $dbS = new Database();
		 $dbS->query($Sql);
		 $dbS->next_row();
		 $d[3] = $dbS->exa_id; //id alianza empresas
		 $d[4] = $dbS->axs_id;//id alianza_sedes
		 $d[14] = $dbS->axs_nombre;
		 $d[5] = $dbS->axe_id; //id alianza departamentos
		 $d[15] = $dbS->axe_nombre;
		 $dbS->close();	     
	  }
   ?> 
  <tr>  
    <td><label>Empresa Propia <?=$Tra->tooltip("empresalianza");?></label></td>
    <td><?php $PSql = "SELECT exa_id,exa_nombre FROM alianza_emp WHERE exa_estado=1 ORDER BY exa_nombre;";
	    echo $Gen->ComboBox($PSql,"exa_id","exa_nombre","empresadoc",$d[3]); ?></td>
  </tr> 
  <tr>
    <td><label>Sede Empresa Propia <?=$Tra->tooltip("sedealianza");?></label></td>
    <td><select name="sededoc" id="sededoc" onkeypress="return handleEnter(this, event)">
        <option selected value="<?if($d[4]>0) echo $d[4]; else echo 0;?>"><?=$Tra->seleccione($d[14])?></option>
	</select></td>
  </tr>
  <tr>
    <td><label>Depto Empresa Propia <?=$Tra->tooltip("deptoalianza");?></label></td>
    <td><select name="doc_axe_id" id="doc_axe_id" onkeypress="return handleEnter(this, event)">
        <option selected value="<?if($d[5]>0) echo $d[5]; else echo 0;?>"><?=$Tra->seleccione($d[15])?></option>
	</select></td>
  </tr>
  <tr>
  <td colspan="2"><table id="d1"><tr>
    <td><label>Destinatario <?=$Tra->tooltip("destinatarioid");?></label></td> 
    <td><?php if($_SESSION['tra_axe_id']>0)
	{
	    $PSql = "SELECT usu_id id,nom nombre FROM v_depxdepal WHERE dxd_axe_id=".$_SESSION['tra_axe_id']." ORDER BY nom;";
		$dbv = new Database();
		$dbv->query($PSql);?>
		<select name="doc_usudestinoid" id="doc_usudestinoid" onkeypress="return handleEnter(this, event)" onchange="if(this.value>0) document.getElementById('d2').style.display = 'none'; else {document.getElementById('d2').style.display = 'block'; document.getElementById('d1').style.display = 'none';}">
	    <option value='-1'>SELECCIONE</option>
		<option value='-1'>--OTRO--</option>
	<?php while($dbv->next_row())
		{ ?>
		<option value="<?=$dbv->id?>"><?=$dbv->nombre?></option>
	<?php	}
	   $dbv->close(); 
	}
	else{
	?>
	<select name="doc_usudestinoid" id="doc_usudestinoid" onkeypress="return handleEnter(this, event)" onchange="if(this.value>0) document.getElementById('d2').style.display = 'none'; else {document.getElementById('d2').style.display = 'block'; document.getElementById('d1').style.display = 'none';}">
        <option selected value="<?if($d[6]>0) echo $d[6]; else echo 0;?>"><?=$Tra->seleccione($d[19])?></option>
	</select>
	<? } ?>
	</td></tr></table>
	</td>
  </tr>
  <tr>
    <td><label>Tipo Documento <?=$Tra->tooltip("tipodoc");?></label></td>
    <td><?php $PSql = "SELECT txd_id,txd_nombre FROM $t_tipo_documento WHERE txd_estado=1;";
	               echo $Gen->ComboBox($PSql, txd_id,txd_nombre,doc_txd_id,$d[2]); ?></td>
  </tr>
  <tr>
   <td colspan="2" ><table id="d2" style="display: none"><tr>
    <td width="213"><label>Nombre Destinatario <?=$Tra->tooltip("destinatario");?></label></td>
    <td width="351"><input type="text" name="doc_usudestino" value="<?=$d[7]?>" onblur="if(this.value==''){document.getElementById('d2').style.display = 'none'; document.getElementById('d1').style.display = 'block';}"></td>
  </tr></tr></table>
	</td>
  <tr>
  <?php
     if($d[31]=='')
	    $d[31] = 'SELECCIONE';
	 else
	 {
	     $dbrem = new Database();
		 echo $sqlrem = "SELECT b.txe_id, b.txe_nombre, c.ext_id, c.ext_nombre
					FROM empresa_cliente a
					JOIN tipo_empresacliente b ON b.txe_id = a.exc_txe_id
					JOIN empresas_tipo c ON c.ext_id = b.txe_ext_id
					WHERE a.exc_id =".$d[17].";";
		 $dbrem->query($sqlrem);
		 $dbrem->next_row();
		 $d[32] = $dbrem->txe_id;//tipo_empresacliente
		 $d[33] = $dbrem->txe_nombre;//tipo_empresacliente
		 $d[34] = $dbrem->ext_id;//empresas_tipo
	 }
  
  ?> 
  <tr>
  <td><label>Clase Empresa Remitente <?=$Tra->tooltip("claseempresa");?></label></td>
  <td><?php $PSql = "SELECT ext_id,ext_nombre FROM empresas_tipo WHERE ext_estado=1 ORDER BY ext_nombre;";
	    echo $Gen->ComboBox($PSql,"ext_id","ext_nombre","claseempresa",$d[34]); ?></td>
  </tr>
  <tr>
    <td><label> Tipo Empresa Remitente <?=$Tra->tooltip("tipoempresadoc");?></label></td>
    <td><select name="doc_txe_id" id="doc_txe_id" onkeypress="return handleEnter(this, event)">
	<?php if($d[31]!='') {?>
	<option value="<?=$d[32]?>"><?=$d[33]?></option>
	<?php } else { ?>
	    <option value="0">SELECCIONE</option>
		<?php } ?>
	    </select></td>
  </tr>
  <tr ><td colspan="2"><table id="e1"><tr>
    <td><label>Empresa Remitente</label></td>
    <td><select name="doc_exc_id" id="doc_exc_id" onkeypress="return handleEnter(this, event)" onchange="if(this.value>0) document.getElementById('e2').style.display = 'none'; else {document.getElementById('e2').style.display = 'block';document.getElementById('e1').style.display = 'none';}">
	    <? if($d[17]>0){ ?>
		 <option value="<?=$d[17]?>"><?=$d[31]?></option>
		<?php } else {?>
		<option value="0">SELECCIONE</option>
		<?php } ?>
	    </select></td></tr></table></td>
  </tr>
  <tr ><td colspan="2"><table id="e2" style="display: none"><tr>
    <td><label>Nombre Empresa Remitente <?=$Tra->tooltip("entremitente");?></label></td>
    <td><input type="text" name="doc_entremitente" id="doc_entremitente" value="<?=$d[10]?>" onblur="if(this.value=='') {document.getElementById('e1').style.display = 'block'; document.getElementById('e2').style.display = 'none';}"/></td>
  </tr>
  </table></td></tr>
  <tr>
    <td width="130"><label>Fecha Documento  <?=$Tra->tooltip("fechadoc");?></label></td>
    <td><input name="doc_fecdoc" readonly type="text" id="dateArrival" class="test" value="<?=$d[8]?>">
        </td>
  </tr>
 <tr>
    <td><label>Asunto Documento <?=$Tra->tooltip("destinatarioid");?></label></td>
    <td>
    <textarea name="doc_asunto" id="doc_asunto" cols="45" rows="5"><?=$d[9]?></textarea></td>
  </tr>
  <tr>
    <td><label>Observaciones <?=$Tra->tooltip("observacion");?></label></td>
    <td>
      <textarea name="doc_obsdocmento" id="doc_obsdocmento" cols="45" rows="5"><?=$d[13]?></textarea></td>
  </tr>
   <tr>
    <td><label>Informaci&oacute;n Anexos <?=$Tra->tooltip("anexos");?></label></td>
    <td><textarea name="doc_anexos" id="doc_anexos" cols="45" rows="5"><?=$d[12]?></textarea></td>
  </tr>

  </table>
<? if($_SESSION['usu_per_id']<5){?>
<input name="enviar" type="button" class="button" value="Guardar" onclick="validarmasdoc();" />
<input name="resetdoc" type="reset" class="button" value="Limpiar" />
<? } ?>
<input type="text" name="n" value="<?=$nn?>">
<input type="hidden" name="doc_tra_id" value="<?=$Tra->idtramite($_SESSION['consecutivo'])?>">
<input type="hidden" name="doc_equipo" value="<?=$Gen->nombreequipo()?>">
<input type="hidden" name="doc_usu_id" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="iddocu" value="<?=$_POST['iddoc']?>">
<input type="hidden" name="tra_consecutivo" value="<?=$_SESSION['consecutivo']?>">
</form>
 <br class="clear" /></div>