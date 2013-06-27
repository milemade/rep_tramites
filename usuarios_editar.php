<?php
 require_once("conf/clave.php");
 $usu_id = $dbu->usu_id;
 $e = $Tra->usuarios_mostrar($dbu->usu_id);
 //print_r($e);
?>
<script>
$(document).ready(function(){
	$("#sedegrupo<?=$usu_id?>").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#depgrupo<?=$usu_id?>").html(data);})
	});
	$("#depgrupo<?=$usu_id?>").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#usu_carr_id<?=$usu_id?>").html(data);})
	});
	$("#usu_carr_id<?=$usu_id?>").change(function(){
		$.post("combos/carga_lider.php",{ id:$(this).val() },function(data){$("#usuario_lider<?=$usu_id?>").html(data);})
	});
})
</script>
<SCRIPT LANGUAGE="JavaScript">
<!-- Idea by:  Nic Wolfe (Nic@TimelapseProductions.com) -->
<!-- Web URL:  http://fineline.xs.mw -->

<!-- Begin
function popUp1(URL) {
day = new Date();
id = day.getTime();
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=650,height=200,left = 383,top = 184');");
}
// End -->
</script>
<p class="texto_bobo">Editar o Modificar Usuario.</p>
<div id="loginPan_vcuatro">
<div class="cabecera"></div>
<form name="forma_editar_usuario" id="frm_editar_usuario<?=$dbu->usu_id?>" action="aplicacion.php" method="post">
<table width="680" border="0">
  <tr>
    <td width="187">Nombres</td>
    <td width="483"><input type="text" name="usu_nombre" id="usu_nombre" value="<?=$e[3]?>" required/></td>
  </tr>
  <tr>
  <tr>
    <td width="187">Apellidos</td>
    <td width="483"><input type="text" name="usu_apel" id="usu_apel" value="<?=$e[4]?>" required/></td>
  </tr>
  <tr>
    <td>Nombre Corto</td>
    <td><input type="text" name="usu_corto" id="usu_corto" value="<?=$e[5]?>" required placeholder="Nombre que mostrara el sistema después de ingresar."/></td>
  </tr>
  <tr>
    <td>Documento Identificación</td>
    <td><input type="text" name="usu_cedula" id="usu_cedula" required value="<?=$e[6]?>" placeholder="Ingrese el numero de identificacion"/></td>
  </tr>
  
  <tr>
    <td>Sede</td>
    <td><?php $sqls = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
	          echo $Gen->ComboBox($sqls,"sede_id","sede_nombre","sedegrupo".$usu_id); ?></td>
  </tr>
  <tr>
    <td>Departamento </td>
    <td><select name="depgrupo<?=$usu_id?>" id="depgrupo<?=$usu_id?>"><option selected value="0">SELECCIONA</option></select></td>
  </tr>
  <tr>
    <td>Cargo</td> 
    <td><select name="usu_carr_id<?=$usu_id?>" id="usu_carr_id<?=$usu_id?>" ><option selected value="0">SELECCIONE</option></select></td>
  </tr>
  <tr>
    <td>Persona Lider<input class="boton" type="button" value="&nbsp;&nbsp;Otro lider" onClick="javascript:popUp1('seleccionar-persona-lider-edicion.php?idt=<?=$dbu->usu_id?>&corto=<?=$e[5]?>');"></td> 
    <td><select name="usuario_lider<?=$usu_id?>" id="usuario_lider<?=$usu_id?>" ><option selected value="<?=$e[21]?>"><?=$e[20]?></option></select>
	</td>
  </tr>
  <tr>
    <td>E.mail corporativo</td>
    <td><input type="email" name="usu_emailcor" id="usu_emailcor" required value="<?=$e[9]?>" /></td>
  </tr>
  <tr>
    <td>E.mail personal</td>
    <td><input type="email" name="usu_emailper" id="usu_emailper" required value="<?=$e[8]?>" /></td>
  </tr>
  <tr>
    <td>Telefono Fijo</td>
    <td><input type="text" name="usu_fijo" id="usu_fijo" required value="<?=$e[11]?>"/></td>
  </tr>
  <tr>
    <td>Telefono Celular</td>
    <td><input type="text" name="usu_celular" id="usu_celular" required value="<?=$e[12]?>"/></td>
  </tr>
  <tr>
    <td>Dirección</td>
    <td><input type="text" name="usu_dir" id="usu_dir" required value="<?=$e[10]?>"/></td>
  </tr>
  <tr>
    <td>Observaciones</td>
    <td><textarea name="usu_obs" id="usu_obs"><?=$e[13]?></textarea></td>
  </tr>
  <tr>
    <td>Activo</td>
    <td><?=$Gen->ComboBox("SELECT act_id,act_nombre FROM activo;", "act_id","act_nombre","usu_act_id",$e[0])?></td>
  </tr>
  <tr>
    <td>Perfil</td>
    <td><?=$Gen->ComboBox("SELECT per_id,per_nombre FROM perfil WHERE per_estado=1;", "per_id","per_nombre","usu_per_id",$e[2])?></td>
  </tr>
</table>
<br class="clear" />
<div align="center">
<input name="enviar" type="submit" class="button" value="Guardar"/></div>
<input type="hidden" name="n" value="52">
<input type="hidden" name="id" value="<?=$dbu->usu_id?>">	
</form>
</div>