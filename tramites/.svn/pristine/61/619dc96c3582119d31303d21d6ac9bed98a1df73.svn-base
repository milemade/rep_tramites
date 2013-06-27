<? 
  $dbb = new Database();
  $sqlbb ="SELECT a.tra_fechahora,a.tra_nombre, b.txt_nombre, c.cxt_nombre, d.txo_nombre,a.tra_observaciones,e.ext_nombre
		   FROM tramite a
		   JOIN tramite_tipo b ON a.tra_txt_id = b.txt_id
		   AND a.tra_consecutivo =  '".$_POST['numtramite']."'
		   LEFT JOIN tramite_categoria c ON a.tra_cxt_id = c.cxt_id
		   LEFT JOIN tramite_tipo_origen d ON a.tra_txo_id = d.txo_id
		   JOIN tramite_estado e ON tra_ext_id=e.ext_id";
 $dbb->query($sqlbb);
 $dbb->next_row();
 $tra_fechahora = $dbb->tra_fechahora;
 $tra_nombre = $dbb->tra_nombre;
 $txt_nombre = $dbb->txt_nombre;
 $cxt_nombre = $Tra->sinnombre($dbb->cxt_nombre);
 $txo_nombre = $Tra->sinnombre($dbb->txo_nombre);
 $tra_observaciones = $dbb->tra_observaciones;
 $ext_nombre = $dbb->ext_nombre;
 $dbb->close();
?>  
<div id="cuerpo_int">
<div class="logo"><!--<img src="imagenes/logo_centro_int.png alt="Centro de Soluciones" width="428" height="117" class="left" />-->
<a href="index.php"></a>
<div id="usuario"></div>
<br class="clear" />
</div>  
<div id="barra">
<a href="index.php"></a>
</div>
<div id="centro">
<!--AQUI COMIENZA-->
<form name="frm" action="" method="post">
<table width="1020" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr class="cabecera">
  <td colspan="2">Consulta Trámite <?=$_POST['numtramite']?></td>
  </tr>
  <tr class="celda_izq">
    <td class="txt_espacio">Fecha:</td>
    <td class="txt_espacio"><?=$tra_fechahora?></td>
  </tr>
  <tr class="celda_izqgris">
    <td class="txt_espacio" width="122"><label>Tipo Trámite:</label></td>
    <td class="txt_espacio" width="855"><?=strtoupper($txt_nombre)?></select></td>
  </tr>
  <tr class="celda_izq">
    <td class="txt_espacio" width="122"><label>Nombre Trámite :</label></td>
    <td wclass="txt_espacio" width="855" style="padding-left:10px"><?=strtoupper($tra_nombre)?></td>
  </tr>
   <tr class="celda_izqgris">
    <td class="txt_espacio" width="122"><label>Categoría:</label></td>
    <td class="txt_espacio" width="855"><?=strtoupper($cxt_nombre)?></td>
   </tr>
  <tr class="celda_izq">
    <td class="txt_espacio" width="122"><label>Origen:</label></td>
    <td class="txt_espacio" width="855"><?=strtoupper($txo_nombre)?></td>
  </tr>
  <tr class="celda_izqgris">
    <td class="txt_espacio">Observaciones</td>
    <td class="txt_espacio"><?=strtoupper($tra_observaciones)?></td>
  </tr>
  <tr class="celda_izqgris">
    <td class="txt_espacio">Estado</td>
    <td class="txt_espacio"><?=strtoupper($ext_nombre)?></td>
  </tr>
    <tr class="cabecera">
  <td colspan="2">Seguimiento Trámite <?=$_POST['numtramite']?></td>
  </tr>
  <tr class="celda_izq">
    <td colspan="2"><table width="100%" border="0">
      <tr>
        <td width="17%"><div align="center"><strong>Fecha- Hora</strong></div></td>
        <td width="30%"><div align="center"><strong>Actividad</strong></div></td>
        <td width="20%"><div align="center"><strong>Responsable</strong></div></td>
        <td width="33%"><div align="center"><strong>Observaciones</strong></div></td>
      </tr>
      <tr class="celda_izqgris">
        <td>2012-05-23 16:54:87</td>
        <td>Radicacion Documento En Alianza</td>
        <td> ALIANZA -  GESTOR DE RECURSOS HUMANO - ADRIANA RODRIGUEZ</td>
        <td>&nbsp;</td>
      </tr>
      <tr class="celda_izqbl">
        <td>2012-05-23 16:54:87</td>
        <td >Asignado Depto Mercadeoy publicidad</td>
        <td>Mercadeo - Juana</td>
        <td>&nbsp;</td>
      </tr>
      <tr class="celda_izqgris">
        <td>2012-05-23 16:54:87</td>
        <td>Reasignado al Departamento jurídica</td>
        <td>Juridica - Mateo</td>
        <td>&nbsp;</td>
      </tr>
      <tr class="celda_izqbl">
        <td>2012-05-23 16:54:87</td>
        <td>Tramitado legalmente</td>
        <td>Juridica - Mateo</td>
        <td>&nbsp;</td>
      </tr>
      <tr class="celda_izqgris">
        <td>18 mayo 2012</td>
        <td>Finalizado</td>
        <td>Juridica - Mateo</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    </tr>
  
  <tr>
  <td colspan="2" align="center">&nbsp;</td>
  </tr>
</table>
  <input type="hidden" name="n" value="111">
</form>
<br class="clear" />
  <!--<p class="texto">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis purus nisl. Aliquam erat volutpat. Phasellus vel volutpat neque. Suspendisse hendrerit commodo dapibus. Nam et felis eget nunc pulvinar accumsan. Pellentesque porta faucibus lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.<br />
<br />
Phasellus iaculis lorem sodales diam dignissim id tristique augue pellentesque. Fusce ut mi ac purus auctor faucibus. Mauris pulvinar pulvinar vehicula. Sed cursus lacinia nisl ac pulvinar. Sed imperdiet pretium odio eget commodo. Donec consequat ultrices mollis. Proin id iaculis ligula. Aenean felis dui, laoreet vel suscipit in, malesuada commodo massa. Fusce sit amet velit nec ligula varius pharetra ac eu libero. Aliquam erat volutpat.</p>-->
<br class="clear" />
</div>
<br class="clear" />

