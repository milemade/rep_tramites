<?
     require_once ("conf/clave.php");
	 $d = $Tra->GetDocumento($_GET['id']);
	 if($d[27]=='')
	    $d[27] = $d[7];
	 //print_r($_SESSION);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Imprimir Documento Tramite</title>
<style type="text/css">
<!--
.titulos {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bolder;
}
.textos {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 13px;
}
.datos {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
}
.titulosusu {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bolder;
}
.textosusu {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bolder;
}
}
-->
</style>
<script>
	function imp()
	{
	  document.getElementById('imprimir').style.display = "none";
	  window.print();
	}
	</script>
</head>

<body>
<table align="center">
<tr>
        <td width="89" id="imprimir"><img src="imagenes/btn_imprimir.png" id="imprimir" onclick="imp()"></td>
      </tr>
    </table>
<table width="600" border="0" align="center">
  <tr>
    <td colspan="2" class="titulos" align="center"> Documento TR&Aacute;MITE  <?=$_SESSION['consecutivo']?></td>
  </tr>
  <tr>
    <td width="208" class="titulos">Departamento</td>
    <td width="482" class="textos"><?=strtoupper($d[23])?></td>
  </tr>
  <tr>
    <td class="titulos">Ciudad</td>
    <td class="textos"><?=strtoupper($d[22])?></td>
  </tr>
  <tr>
    <td><label class="titulos">Tipo Documento </label></td>
    <td class="textos"><?=strtoupper($d[24])?></td>
  </tr>
    
  <tr>
    <td><label class="titulos">Empresa Alianza </label></td>
    <td class="textos"><?=strtoupper($d[25])?></td>
  </tr>
  <tr>
    <td><label class="titulos">Sede Empresa Alianza </label></td>
    <td class="textos"><?=strtoupper($d[26])?></td>
  </tr>
  <tr>
    <td><label class="titulos">Depto Empresa Alianza </label></td>
    <td class="textos"><?=strtoupper($d[15])?></td>
  </tr>
  
  <tr><td colspan="2"><table id="d1"><tr>
    <td><label class="titulos">Destinatario </label></td> 
    <td class="textos" style="padding-left:85px"><?=strtoupper($d[27])?></td></tr></table>
	</td>
  </tr>
  <tr>
  <td><label class="titulos">Clase Empresa </label></td>
  <td class="textos"><?=strtoupper($d[28])?></td>
  <tr>
    <td><label class="titulos"> Tipo Empresa </label></td>
    <td class="textos"><?=strtoupper($d[30])?></td>
  </tr>
  <tr ><td colspan="2"><table id="e1"><tr>
    <td><label class="titulos">Empresa Remitente</label></td>
    <td class="textos" style="padding-left:35px"><?=strtoupper($d[31])?></td></tr></table></td>
  </tr>
  <tr>
    <td><label class="titulos">Nombre Remitente </label></td>
    <td class="textos"><?=$d[11]?></td>
  </tr>
 <tr>
    <td width="130"><label class="titulos">Fecha Documento  </label></td>
    <td class="textos"><?=$d[8]?></td>
  </tr>
 <tr>
    <td><label class="titulos">Asunto Documento </label></td>
    <td class="textos">
    <?=strtoupper($d[9])?></td>
  </tr>
  
  <tr>
    <td><label class="titulos">Observaciones </label></td>
    <td class="textos"><?=strtoupper($d[13])?></td>
  </tr>
   <tr>
    <td><label class="titulos">Informaci&oacute;n Anexos</label></td>
    <td class="textos"><?=strtoupper($d[12])?></td>
  </tr>
    </table>
<table align="center">
<tr>
<td class="textosusu"><?=$_SESSION['usu_nombre']?></td>
</tr>
<tr>
<td class="textosusu"><?=$_SESSION['ultimoAcceso']?></td>
</tr>
<tr>
<td class="textosusu"><?=$_SESSION['equipo']?></td>
</tr>
</table>
</body>
</html>
