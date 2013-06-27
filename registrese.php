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
function validarnumero(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
    //patron =/[A-Za-z\s]/; // 4
    patron = /\d/; // Solo acepta números
    //patron = /\w/; // Acepta números y letras
    //patron = /\D/; // No acepta números
    //patron =/[A-Za-zñÑ\s]/; // igual que el ejemplo, pero acepta también las letras ñ y Ñ
    //patron = /[ajt69]/;
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
} 
function validar()
{
       if(document.frmregistrese.usu_nombre.value=="")
       {
           alert("Debe ingresar el nombre.");
	   document.frmregistrese.usu_nombre.focus();
	   return false;
       }
       if(vacio(document.frmregistrese.usu_nombre.value)==false) {
	   alert("No debe ingresar espacios, por favor ingrese el nombre.");
	   document.frmregistrese.usu_nombre.focus();
	   return false;
       } 
       if(document.frmregistrese.usu_apel.value=="")
       {
           alert("Debe ingresar el Apellido.");
	   document.frmregistrese.usu_apel.focus();
	   return false;
       }
       if(vacio(document.frmregistrese.usu_apel.value)==false) {
	   alert("No debe ingresar espacios, por favor ingrese el apellido.");
	   document.frmregistrese.usu_apel.focus();
	   return false;
       } 
       if(document.frmregistrese.usu_corto.value=="")
       {
           alert("Debe ingresar el Apellido.");
	   document.frmregistrese.usu_corto.focus();
	   return false;
       }
       if(vacio(document.frmregistrese.usu_corto.value)==false) {
	   alert("No debe ingresar espacios, por favor ingrese el apellido.");
	   document.frmregistrese.usu_corto.focus();
	   return false;
       } 
       if(document.frmregistrese.usu_exc_id.value==0)
       {
           alert("Debe Seleccionar la Empresa Cliente.");
	   document.frmregistrese.usu_exc_id.focus();
	   return false;
       }
       if ((document.frmregistrese.usu_emailcor.value == "")|| (document.frmregistrese.usu_emailcor.value.indexOf('@') == -1) || (document.frmregistrese.usu_emailcor.value.indexOf('.') == -1) )
       {
	  alert("Debe ingresar un e.mail correcto, Gracias.");
	  document.frmregistrese.usu_emailcor.focus();
	  return false;
      }
      if ((document.frmregistrese.usu_emailper.value == "")|| (document.frmregistrese.usu_emailper.value.indexOf('@') == -1) || (document.frmregistrese.usu_emailper.value.indexOf('.') == -1) )
       {
	  alert("Debe ingresar un e.mail correcto, Gracias.");
	  document.frmregistrese.usu_emailper.focus();
	  return false;
      }
      if(document.frmregistrese.usu_dir.value=="")
       {
           alert("Debe ingresar la Direccion.");
	   document.frmregistrese.usu_dir.focus();
	   return false;
       }
       if(vacio(document.frmregistrese.usu_dir.value)==false) {
	   alert("No debe ingresar espacios, por favor ingrese la Direccion.");
	   document.frmregistrese.usu_dir.focus();
	   return false;
       } 
       if(document.frmregistrese.usu_fijo.value=="")
       {
           alert("Debe ingresar el numero de telefono fijo.");
	   document.frmregistrese.usu_fijo.focus();
	   return false;
       }
       if(vacio(document.frmregistrese.usu_fijo.value)==false) {
	   alert("No debe ingresar espacios, por favor ingrese el numero de telefono fijo.");
	   document.frmregistrese.usu_fijo.focus();
	   return false;
       } 
       if(document.frmregistrese.usu_celular.value=="")
       {
           alert("Debe ingresar el numero de telefono celular.");
	   document.frmregistrese.usu_celular.focus();
	   return false;
       }
       if(vacio(document.frmregistrese.usu_celular.value)==false) {
	   alert("No debe ingresar espacios, por favor ingrese el numero de telefono celular.");
	   document.frmregistrese.usu_celular.focus();
	   return false;
       } 
       else
       {
           document.frmregistrese.submit();
	   return true;
       }
}
</script>
<style>
.cabecerareg{
	color:#0D2744;
	font-size:15px;
	font-weight:bold;
	text-align:center;
	height:30px;
	}
.textousu {
	position:relative;
	top:0px;
	width:100%;
	height:auto;
	border:#FFF 1px solid;
	margin-top:10px;
	text-align:justify;
	font-size:12px;
	padding:10px;
	background-color:#d4d4d4;
	opacity: 0.7;
 	-moz-opacity: 0.7;
 	filter:alpha(opacity=70);
	}
</style>
<div id="barra">
<a href="#" class="titulo">REGISTRESE</a>
<!--<a href="logout.php"></a>-->
<a href="index.php" class="volver"></a>
<br class="clear" />
</div>
<div align="center">
<div id="loginPan_vtres">
<div class="cabecerareg">Por favor, diligencie los siguientes campos para registrarse en el sistema</div>
<form name="frmregistrese" action="aplicacionindex.php" method="post">
      <table  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="182"><label>Nombre (s) <?=$Tra->tooltip("nombrereg");?></label></td>
    <td width="208"><input name="usu_nombre" type="text"/></td>
  </tr>
  <tr>
    <td width="182"><label>Apellido(s) <?=$Tra->tooltip("apelreg");?></label></td>
    <td width="208"><input name="usu_apel" type="text"/></td>
  </tr>
  <tr>
    <td width="182"><label>Nombre Corto <?=$Tra->tooltip("nombrecorto");?></label></td>
    <td width="208"><input name="usu_corto" type="text" placeholder="Es el nombre que se mostrara en el Sistema Ej. Luis Najar"/></td>
  </tr>
  <tr>
    <td width="182"><label>N&uacute;mero Cedula <?=$Tra->tooltip("docid");?></label></td>
    <td width="208"><input name="usu_cedula" type="text" placeholder="El numero del Documento de Identidad"/></td>
  </tr>
  <tr>
    <td><label> Tipo Empresa <?=$Tra->tooltip("tipoempresa");?></label></td>
    <td><?php $PSql = "SELECT txe_id,txe_nombre FROM $t_tipo_empresacliente WHERE txe_id>1 AND txe_id<10 AND txe_estado=1 ORDER BY txe_nombre;";
	     echo $Gen->ComboBox($PSql,"txe_id","txe_nombre","txc_id","","onchange='usu_exc_idcambia(this);ocultar(this)'"); ?></td>
  </tr>
  <tr>
    <td><label>Empresa <?=$Tra->tooltip("empresa");?></label></td>
    <td><?php $PSql = "SELECT exc_id,exc_nombre FROM $t_empresa_cliente WHERE 1=2 AND exc_estado=1 ORDER BY exc_nombre;";
	          echo $Gen->ComboBox($PSql,"exc_id","exc_nombre","usu_exc_id"); ?>
		<?php $Gen->Sincronice2Combos("txc_id","usu_exc_id",$t_empresa_cliente,0,"exc_txe_id","exc_id","exc_nombre");?></td>
  </tr>
  <tr>
    <td> <label>E-mail corporativo</label></td>
    <td><input name="usu_emailcor" type="text" placeholder="Ingreso del E.mail corporativo"/></select></td>
  </tr>
  <tr>
    <td> <label>E-mail Personal</label></td>
    <td><input name="usu_emailper" type="text" placeholder="Ingreso del E.mail personal o alternativo"/></select></td>
  </tr>
  <tr>
    <td> <label>Direccion <?=$Tra->tooltip("direccion");?></label></td>
    <td><input name="usu_dir" type="text" placeholder="Ingreso de la Direccion Fisica"/></select></td>
  </tr>
  <tr>
    <td> <label><?=$Gen->limpiarCaracteresEspeciales("Teléfono Fijo")?></label></td>
    <td><input name="usu_fijo" type="text" onKeyPress="return validarnumero(event);" /></select></td>
  </tr>
  <tr>
    <td> <label><?=$Gen->limpiarCaracteresEspeciales("Teléfono Celular")?></label></td>
    <td><input name="usu_celular" type="text" onKeyPress="return validarnumero(event);"/></select></td>
  </tr>
  <tr>
    <td> <label>Observaciones</label></td>
    <td><textarea name="usu_obs"></textarea></td>
  </tr>
</table>
<input name="Input" type="reset" class="button" value="Limpiar" />
<input name="Input" type="button" class="button" value="Enviar" onclick="validar();" />		
<br class="clear" />
<input type="hidden" name="n" value="111">
<input name="usu_per_id" type="hidden" value="6">
</form>
</div>
<div id="txt_inferior">
<p class="texto"> 
<? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='registrese' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</p>
<br class="clear" />
</div>
<br class="clear" />
