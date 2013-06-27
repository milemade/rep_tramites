<? require_once("conf/clave.php");?>
<script language="javascript" type="text/javascript" src="kalendar/jquery-1.7.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#sedeemp").change(function(){
		$.post("combos/carga_select3.php",{ id:$(this).val() },function(data){$("#depto").html(data);})
	});
	$("#depto").change(function(){
		$.post("combos/carga_select5.php",{ id:$(this).val() },function(data){$("#usu_lider").html(data);})
	});
})
</script>
<script>
function pon(pref){
  opener.document.frm_crear_usuarios.v_usua.value = pref
  opener.document.frm_crear_usuarios.v_usua.disabled=false
  window.close()
}
</script>
<link rel="stylesheet" type="text/css" href="tabbed_pages/interna_pages.css" />
<div id="loginPan_vcuatro">
<div class="cabecera"></div>
<form name="frm" action="aplicacion.php" method="post">
<table width="680" border="0">
<tr>
    <td><label>Sede Empresa</label></td>
    <td><?php $PSql = "SELECT sede_id,sede_nombre FROM empresa_sedes WHERE sede_estado=1;";
	    echo $Gen->ComboBox($PSql,"sede_id","sede_nombre","sedeemp")?></td>
  </tr><tr>
    <td><label>Departamento</label></td>
    <td><select name="depto" id="depto" >
        <option selected value="0">SELECCIONE</option>
	</select></td>
  </tr>
  <tr>
    <td><label>Cargo - Usuario</label></td>
    <td><select name="usu_lider" id="usu_lider" onchange="pon(this.value)">
        <option selected value="0">SELECCIONE</option>
	</select></td>
  </tr>
 </table>
</form>
</div>