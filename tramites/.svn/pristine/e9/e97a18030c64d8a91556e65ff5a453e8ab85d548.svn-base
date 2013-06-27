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
<?php
 require_once("conf/clave.php");
 $e = $Tra->usuarios_mostrar($dbu->usu_id);
?>
<p class="texto_bobo">Editar o Modificar Usuario.</p>
<div id="loginPan_vcuatro">
<div class="cabecera"></div>
<form name="frm" action="aplicacion.php" method="post">
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
    <td><select name="sede" id="sede"><option selected value="0">Seleccione</option>
        <?php $dbs = new Database();
	$sqls = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
	$dbs->query($sqls);
	while($dbs->next_row())
	{ if($e[16]==$dbs->sede_id)
	    $selected = "selected";
	  else
	    unset($selected);
	?>
	<option value="<?=$dbs->sede_id?>" <?=$selected?>><?=$dbs->sede_nombre?></option>
	<?php } $dbs->close(); ?>
	</select></td>
  </tr>
  <tr>
    <td>Departamento </td>
    <td><select name="dep" id="dep"><option selected value="0"><?=$e[15]?></option></select></td>
  </tr>
  <tr>
    <td>Cargo</td> 
    <td><select name="usu_car_id" id="usu_car_id" ><option selected value="<?=$e[1]?>"><?=$e[14]?></option></select></td>
  </tr>
  <tr>
    <td>Persona Lider</td> 
    <td><select name="usu_car_lider" id="usu_car_lider" ><option selected value="0">Seleccione</option></select></td>
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
<input name="limpiar" type="reset" class="button" value="Limpiar" />
<input name="enviar" type="submit" class="button" value="Guardar"/></div>
<input type="hidden" name="n" value="52">
<input type="hidden" name="id" value="<?=$dbu->usu_id?>">	
</form>
</div>