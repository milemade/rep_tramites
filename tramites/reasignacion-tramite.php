<?
//print_r($_SESSION);
  $asig = $Tra->UsuarioAsignado($Tra->idtramite($_SESSION['consecutivo']));
?>
<script>
$(document).ready(function(){
	$("#empresa").change(function(){
		$.post("combos/carga_select22.php",{ id:$(this).val() },function(data){$("#sede").html(data);})
	});
	$("#sede").change(function(){
		$.post("combos/carga_select33.php",{ id:$(this).val() },function(data){$("#tra_axe_id").html(data);})
	});
	$("#sedee").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#depto").html(data);})
	});
	$("#depto").change(function(){
		$.post("combos/carga_select5.php",{ id:$(this).val() },function(data){$("#rxr_usuasig").html(data);})
	});
	
})
</script>
<div id="loginPan_vtres" align="center">
<form name="formdoc" action="aplicacion.php" method="post">
<table width="557" border="0">
<tr>
<td>Usuario Actual</td><td><?=$Gen->ComboBox("SELECT usu_id,usu_corto FROM v_usuario;", "usu_id","usu_corto","txr_usuinicial",$asig)?></td>
</tr>
<tr>
    <td><label>Sede Empresa</label></td>
    <td><?php $PSql = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
	    echo $Gen->ComboBox($PSql,"sede_id","sede_nombre","sedee"); ?></td>
  </tr>
  <tr>
    <td><label>Departamento</label></td>
    <td><select name="depto" id="depto" >
        <option selected value="0">SELECCIONE</option>
	</select></td>
  </tr>
  <tr>
    <td><label>Cargo - Usuario</label></td>
    <td><select name="rxr_usuasig" id="rxr_usuasig">
        <option selected value="0">SELECCIONE</option>
	</select></td>
  </tr>
  <tr>
<td>Observaciones Internas</td><td><textarea name="txr_observaciones"></textarea></td>
</tr>
<tr>
<td>Observaciones Comerciales</td><td><textarea name="txr_ciales"></textarea></td>
</tr>
</table>
<input name="enviar" type="button" class="button" value="Guardar" />
<input name="resetdoc" type="reset" class="button" value="Limpiar" />
<input type="hidden" name="txr_tra_id" id="txr_tra_id" value="<?=$Tra->idtramite($_SESSION['consecutivo'])?>">
<input type="hidden" name="txr_usu_guarda" id="txr_usu_guarda" value="<?=$_SESSION['usu_id']?>">
<input type="hidden" name="txr_ip" value="<?=$Gen->nombreequipo()?>">
<input type="hidden" name="n" id="n" value="48">
</form>
</div>