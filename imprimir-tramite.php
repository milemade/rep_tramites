<?
     require_once ("conf/clave.php");
	 $db = new Database();
	 $sql = "SELECT a.tra_consecutivo,b.dep_nombre,c.ciu_nombre,d.axe_nombre depto,e.axs_nombre sede,f.exa_nombre empresa,
	                g.txt_nombre,a.tra_nombre,h.cxt_nombre,i.txo_nombre,ext_nombre,a.tra_prioridad,j.ext_nombre,
					l.sede_nombre,l.dxe_nombre,l.usu_corto
	          FROM tramite a
			  JOIN ciudad c ON a.tra_ciu_id=c.ciu_id
			  JOIN departamento b ON b.dep_id=c.ciu_dep_id
			  JOIN alianza_dep d ON a.tra_axe_id = d.axe_id
			  JOIN alianza_sedes e ON d.axe_axs_id = e.axs_id
			  JOIN alianza_emp f ON e.axs_exa_id = f.exa_id   
			  JOIN tramite_tipo g ON a.tra_txt_id = g.txt_id 
			  JOIN tramite_categoria h ON a.tra_cxt_id = h.cxt_id
			  JOIN tramite_tipo_origen i ON i.txo_id=a.tra_txo_id
			  JOIN tramite_estado j ON j.ext_id=a.tra_ext_id
			  JOIN tramite_seguimiento k ON a.tra_id=k.txs_tra_id
			  JOIN v_usuario l ON k.txs_usu_id=l.usu_id
			  WHERE a.tra_id=".$_GET['id'];
	 $db->query($sql);
	 $db->next_row();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Imprimir Tramite</title>
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
.textosusu {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bolder;
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
<table width="600" border="0" align="center">
  <tr>
    <td colspan="2" class="titulos" align="center"> TR&Aacute;MITE  <?=$db->tra_consecutivo?></td>
  </tr>
  <tr>
    <td width="208" class="titulos">Departamento</td>
    <td width="482" class="textos"><?=strtoupper($db->dep_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Ciudad</td>
    <td class="textos"><?=strtoupper($db->ciu_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Empresa Alianza</td>
    <td class="textos"><?=strtoupper($db->empresa)?></td>
  </tr>
  <tr>
    <td class="titulos">Sede Empresa Alianza</td>
    <td class="textos"><?=strtoupper($db->sede)?></td>
  </tr>
  <tr>
    <td class="titulos">Departamento Empresa Alianza</td>
    <td class="textos"><?=strtoupper($db->depto)?></td>
  </tr>
  <tr>
    <td class="titulos">Tipo Tr&aacute;mite</td>
    <td class="textos"><?=strtoupper($db->txt_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Nombre Tr&aacute;mite</td>
    <td class="textos"><?=strtoupper($db->tra_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Categor&iacute;a</td>
    <td class="textos"><?=strtoupper($db->cxt_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Tipo Origen</td>
    <td class="textos"><?=strtoupper($db->txo_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Prioridad</td>
    <td class="textos"><?=strtoupper($db->tra_prioridad)?></td>
  </tr>
  <tr>
    <td class="titulos">Sede Grupo Alianza</td>
    <td class="textos"><?=strtoupper($db->sede_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Departamento Grupo</td>
    <td class="textos"><?=strtoupper($db->dxe_nombre)?></td>
  </tr>
  <tr>
    <td class="titulos">Cargo - Usuario</td>
    <td class="textos"><?=strtoupper($db->usu_corto)?></td>
  </tr>
  <tr>
    <td class="titulos">Estado Tramite</td>
    <td class="textos"><?=strtoupper($db->ext_nombre)?></td>
  </tr>
  <tr>
    <td colspan="2"><table width="700" border="0">
      <tr>
        <td width="601"><table width="500" border="0">
      <tr>
        <td width="83" class="datos"><b>Usuario</b></td>
        <td width="407"class="textos"><?=strtoupper($_SESSION['usu_nombre'])?></td>
      </tr>
      <tr>
        <td class="datos"><b>FechaHora</b></td>
        <td class="textos"><?=$datetime?></td>
      </tr>
      <tr>
        <td class="datos"><b>Direcci&oacute;n IP</td></b>
        <td class="textos"><?=$_SESSION['equipo']?></td>
      </tr>
    </table></td>
        <td width="89" id="imprimir"><img src="imagenes/btn_imprimir.png" id="imprimir" onclick="imp()"></td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>
