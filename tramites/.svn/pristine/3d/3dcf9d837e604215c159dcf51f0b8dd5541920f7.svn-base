<script>
function validar()
{
  if ((document.frm.email.value == "")|| (document.frm.email.value.indexOf('@') == -1) || (document.frm.email.value.indexOf('.') == -1) )
       {
	  alert("Debe ingresar un e.mail valido, Gracias.");
	  document.frm.email.focus();
	  return false;
      }
      else
      {
       document.frm.submit();
       return true;
      }
}
</script>
<div id="barra">
<a href="#" class="titulo">OLVIDO PASSWORD</a>
<a href="logout.php" target="_top"></a>
<a href="index.php" class="volver"></a>
<br class="clear" />
</div>
<div id="cuerpoindex">
<div id="loginPan_vtres">
<div class="cabecera">Ingrese el E.mail.</div>
<form name="frm" action="aplicacionindex.php" method="post">
<table  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td><label>E.mail:</label></td>
    <td><input name="email" type="text"/></select></td>
  </tr>
</table>
<input name="limpiar" type="reset" class="button" value="Limpiar" />
<input name="enviar" type="button" class="button" value="Enviar" onclick="validar();"/>		
<br class="clear" />
<input type="hidden" name="n" value="121">
</form>
</div>
<div id="txt_inferior">
<p class="texto">
<?=$Gen->limpiarCaracteresEspeciales("Por favor ingrese el e.mail registrado, enseguida le enviaremos un e,mail con su nuevo password. En caso de no recibirlo oportunamente, comuniquese con el Administrador de la aplicación al siguiente E.mail fulanito@mail.com<BR><BR> Muchas Gracias!")?>
</p>
<br class="clear" />
</div>
<br class="clear" />
