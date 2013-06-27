<? include "../conf/clave.php";?>
<script src="jquery.min.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
	$("#empresaal").change(function(){
		$.post("carga_select2.php",{ id:$(this).val() },function(data){$("#sedal").html(data);})
	});
})
</script>
<table>
<tr>
<td>Empresa Alianza</td>
<td>
<select name="empresaal" id="empresaal">
<option selected value="0">Seleccione</option>
<? $sql1 = "SELECT * FROM alianza_emp WHERE exa_estado=1;";
   $db1 = new Database();
   $db1->query($sql1);
   while($db1->next_row()){?>
   <option value="<?=$db1->exa_id?>"><?=$db1->exa_nombre?></option>
   <?php }$db1->close(); ?>
   </select>
   </td>
   </tr>
   <tr>
   <td>Sede Empresa:</td>
   <td>
<select name="sedal" id="sedal">
<option selected value="0">Seleccione</option>
</select>
</td></tr>
<tr>
<td>Departamento Empresa:</td>
<td>
<select name="dep" id="dep">
<option selected value="0">Seleccione</option>
</select>
</td></tr>
<tr>
<td>Cargo Lider</td>
<td>
<select name="cargo" id="cargo">
<option selected value="0">Seleccione</option>
</select>
<td>
<tr>
</table>