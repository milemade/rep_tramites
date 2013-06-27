<?php
     if(isset($_POST['codigo']) && $_POST['codigo']>0)
	 {
	     $p = $Gen->GetDatos($_POST['codigo']);
		 //print_r($p);
	 }
     if($p[9]>0)
	    $none = "block";
	 else
	    $none = "none";
?>
<script> function cambiarDisplay(id) {
  if (!document.getElementById) return false;
  fila = document.getElementById(id);
  if (fila.style.display != "none") {
    fila.style.display = "none"; //ocultar fila
  } else {
    fila.style.display = ""; //mostrar fila
  }
} </script><script>
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
    if(document.frmcrear.tra_txt_id.value==0)
	{
	    alert("Debe seleccionar el tipo de tramite.");
		document.frmcrear.tra_txt_id.focus();
		return false;
	}
	else
	{
	    if(document.frmcrear.tra_nombre.value=="")
		{
			alert("Debe ingresar el nombre del tramite.");
			document.frmcrear.tra_nombre.focus();
			return false;
		}
		if(vacio(document.frmcrear.tra_nombre.value)==false) 
		{
		   alert("No debe ingresar espacios, por favor ingrese el nombre del tramite.");
		   document.frmcrear.tra_nombre.focus();
		   return false;
       } 
	   if(document.frmcrear.tra_cxt_id.value=="")
	   {  
			alert("Debe seleccionar la categoria del tramite.");
			document.frmcrear.tra_cxt_id.focus();
			return false;
	   }
	   if(document.frmcrear.tra_txo_id.value=="")
	   {  
			alert("Debe seleccionar el origen del tramite.");
			document.frmcrear.tra_txo_id.focus();
			return false;
	   }
	    if(document.frmcrear.tra_prioridad.value=="")
	   {  
			alert("Debe seleccionar la prioridad del tramite.");
			document.frmcrear.tra_prioridad.focus();
			return false;
	   }
	   else
	   {
	      document.frmcrear.submit();
		  return true;
	   }
	}
}
</script>
<div id="loginPan_vtres">
<form name="frmcrear" action="aplicacion.php" method="post">
<div class="cabecera"></div>
      <table border="0" cellspacing="0" cellpadding="0" align="center">
      
      <tr>
    <td width="130"><label>Consecutivo:</label></td>
    <td width="776"><input name="tra_consecutivo" type="text" value="<? if(!isset($p[6]))echo $Gen->maximo(); else echo $p[6];?>" readonly/></select></td>
  </tr>
  <tr>
    <td width="130"><label>Tipo Tr&aacute;mite:</label></td>
    <td width="776"><?php $PSql = "SELECT txt_id,txt_nombre FROM $t_tramite_tipo WHERE txt_estado=1;";
	               echo $Gen->ComboBox($PSql, txt_id,txt_nombre,tra_txt_id,$p[0]); ?></select><a class=Ntooltip href="#"><img src="imagenes/icono_ayuda.png"><span>
     <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='tipotramite' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</span></a></td>
  </tr>
  <tr>
    <td> <label>Nombre Tr&aacute;mite:</label></td>
    <td><input name="tra_nombre" type="text" value="<?=$p[3]?>"/></td>
  </tr>
  <tr>
    <td width="130"><label>Categor&iacute;a:</label></td>
    <td width="776"><?php $PSql = "SELECT cxt_id,cxt_nombre FROM $t_tramite_categoria WHERE cxt_estado=1;";
	               echo $Gen->ComboBox($PSql, cxt_id,cxt_nombre,tra_cxt_id,$p[1]); ?></select></td>
  </tr>
  <tr>
    <td width="130"><label>Origen:</label></td>
    <td width="776"><?php $PSql = "SELECT txo_id,txo_nombre FROM $t_tramite_tipo_origen WHERE txo_estado=1;";
	               echo $Gen->ComboBox($PSql, txo_id,txo_nombre,tra_txo_id,$p[2]); ?></td>
  </tr>
  <tr>
    <td width="130"><label>Prioridad Tr&aacute;mite:</label></td>  
<td width="776"><select name="tra_prioridad"><option value="0">-- Elija por favor --</option>
	            <? for($i=1;$i<6;$i++) {
				     if ($p[4]==$i)
					    $selected = "selected";
					 else 
					   unset($selected);?>
				
	                <option value="<?=$i?>" <?=$selected?>><?=$i?></option>
					<? } ?>
	</select></td>
  </tr>
  <tr>
    <td> <label>Observaciones Trámite:</label></td>
    <td><textarea name="tra_observaciones"><?=$p[7]?></textarea></td>
  </tr>
  <?php if($_SESSION['usu_per_id']==1) { ?>
  <tr>
    <td colspan="2"><br><div class="cabecera" id="row1" onClick="cambiarDisplay('row2')" style="cursor:pointer">ASIGNACION (opcional)</div></td>
    </tr>
	<tr>
	<td colspan="2"><table id="row2" style="display:<?=$none?>;">
  <tr>
    <td><label>Departamento Empresa</label></td>
    <td><?php $PSql = "SELECT dxe_id,dxe_nombre FROM $t_dep_empresa WHERE dxe_emp_id=".$Gen->id_empresa($_SESSION['usu_id'])." AND dxe_estado=1;";
	          echo $Gen->ComboBox($PSql, "dxe_id","dxe_nombre","doc_dxe_id","","onchange='txt_usuasigcambia(this);ocultar(this)'"); ?></td>
  </tr>
  <tr>
    <td><label>Cargo - Usuario</label></td>
    <td><?php 
	     if($p[9]>0)
		    $PSql = "SELECT * FROM $v_usuario ORDER BY nom;";
		 else
	       $PSql = "SELECT * FROM $v_usuario WHERE 1=2 ORDER BY nom;";
	    echo $Gen->ComboBox($PSql, "usu_id","nom","txt_usuasig",$p[9]); ?>
		<?php $Gen->Sincronice2Combos("doc_dxe_id","txt_usuasig","$v_usuario",0,"usu_car_id","usu_id","nom");?></td>
  </tr>
  <tr>
    <td><label>Observaciones Asignación:</label></td>
    <td><textarea name="txt_observaciones"><?=$p[10]?></textarea></td>
  </tr></table></td></tr>
  <input type="hidden" name="txr_tra_id" value="0">
<input type="hidden" name="txr_usuinicial" value="<?=$_SESSION['usu_id']?>">
  <?php } ?>
  <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
</table>
<input name="Input" type="button" class="button" value="Enviar" onclick="validar();" />
<input name="Input" type="reset" class="button" value="Limpiar" />
<input type="hidden" name="n" value="4">
<input type="hidden" name="b" value="1">
<input type="hidden" name="tra_usu_id" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="tra_equipo" value="<?=$Gen->nombreequipo()?>">
<input type="hidden" name="tra_ext_id" value="1">
	
		</form>
 <br class="clear" /></div>
 