<? require_once("conf/clave.php");?>
<script>
        $(document).ready(function(){
	$("#sede").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#dep").html(data);})
	});
	$("#dep").change(function(){
		$.post("combos/carga_select4.php",{ id:$(this).val() },function(data){$("#usu_car_id").html(data);})
	});
	$("#usu_car_id").change(function(){
		$.post("combos/carga_lider.php",{ id:$(this).val() },function(data){$("#usu_car_lider").html(data);})
	});
})
</script>
<SCRIPT LANGUAGE="JavaScript">
<!-- Idea by:  Nic Wolfe (Nic@TimelapseProductions.com) -->
<!-- Web URL:  http://fineline.xs.mw -->

<!-- Begin
function popUp(URL) {
day = new Date();
id = day.getTime();
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=650,height=160,left = 383,top = 184');");
}
// End -->
</script>
<p class="texto_bobo">El nombre de usuario y password llegará  a los mails suministrados.</p>
<div id="loginPan_vcuatro">
<div class="cabecera"></div>
<form name="frm_crear_usuarios" action="aplicacion.php" method="post">
<table width="680" border="0">
  
  <tr>
    <td width="307">Nombres</td>
    <td width="363"><input type="text" name="usu_nombre" id="usu_nombre" required/></td>
  </tr>
  <tr>
  <tr>
    <td width="307">Apellidos</td>
    <td width="363"><input type="text" name="usu_apel" id="usu_nombre" required/></td>
  </tr>
  <tr>
    <td>Nombre Corto</td>
    <td><input type="text" name="usu_corto" id="usu_corto" required placeholder="Nombre que mostrara el sistema después de ingresar."/></td>
  </tr>
  <tr>
    <td>Documento Identificación</td>
    <td><input type="text" name="usu_cedula" id="usu_cedula" required placeholder="Ingrese el numero de identificacion"/></td>
  </tr>
  
  <tr>
    <td>Sede</td>
    <td><select name="sede" id="sede"><option selected value="0">SELECCIONE</option>
        <?php $dbs = new Database();
	$sqls = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
	$dbs->query($sqls);
	while($dbs->next_row())
	{
	?>
	<option value="<?=$dbs->sede_id?>"><?=$dbs->sede_nombre?></option>
	<?php } $dbs->close(); ?>
	</select></td>
  </tr>
  <tr>
    <td>Departamento </td>
    <td><select name="dep" id="dep"><option selected value="0">SELECCIONE</option></select></td>
  </tr>
  <tr>
    <td>Cargo</td> 
    <td><select name="usu_car_id" id="usu_car_id" ><option selected value="0">SELECCIONE</option></select></td>
  </tr>
  <tr id="PL1"><td>Persona Lider</td>
    <td><select name="usu_car_lider" id="usu_car_lider"><option selected value="0">SELECCIONE</option></select></td>
 </tr>
 <tr>
<td style="padding-left:180px"><input class="boton" type="button" value="&nbsp;&nbsp;Otro lider" onClick="document.getElementById('usu_car_lider').disabled=true;javascript:popUp('seleccionar-persona-lider.php')"></td>
	<td><? $PSql="SELECT usu_id,usu_corto FROM v_usuario;";
	       echo $Gen->ComboBox($PSql,"usu_id","usu_corto","v_usua",'',"disabled onchange=if(this.value==0)document.getElementById('usu_car_lider').disabled=false;")?></td>
	</tr>
  <tr>
    <td>E.mail corporativo</td>
    <td><input type="email" name="usu_emailcor" id="usu_emailcor" required/></td>
  </tr>
  <tr>
    <td>E.mail personal</td>
    <td><input type="email" name="usu_emailper" id="usu_emailper" required/></td>
  </tr>
  <tr>
    <td>Telefono Fijo</td>
    <td><input type="text" name="usu_fijo" id="usu_fijo" required/></td>
  </tr>
  <tr>
    <td>Telefono Celular</td>
    <td><input type="text" name="usu_celular" id="usu_celular" required/></td>
  </tr>
  <tr>
    <td>Dirección</td>
    <td><input type="text" name="usu_dir" id="usu_dir" required/></td>
  </tr>
  <tr>
    <td>Observaciones</td>
    <td><textarea name="usu_obs" id="usu_obs"></textarea></td>
  </tr>
  <tr>
    <td>Activo</td>
    <td><?=$Gen->ComboBox("SELECT act_id,act_nombre FROM activo;", "act_id","act_nombre","usu_act_id")?></td>
  </tr>
</table>
<br class="clear" />
<div align="center">
<input name="limpiar" type="reset" class="button" value="Limpiar" />
<input name="enviar" type="submit" class="button" value="Guardar"/></div>
<input type="hidden" name="n" value="51">
<input type="hidden" name="usu_per_id" value="2">	
</form>
</div>