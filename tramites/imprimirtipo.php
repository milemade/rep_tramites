<style type="text/css">
<!--
.titulo {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	text-align:center;
	font-weight: bolder;
	text-transform: uppercase;
	color: #202020;
}
.tit {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bolder;
	text-transform: uppercase;
	color: #202020;
}
.texto {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	text-transform: uppercase;
	color: #000000;
}
.textopeq {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	color: #000000;
}
-->
</style><table width="800" border="0">
  <?
require_once("conf/clave.php");
$db = new Database();
$sql = "SELECT a.txt_id,a.txt_nombre,a.txt_descripcion,a.txt_fechahora,b.txf_nombre,c.usu_corto
          FROM tramite_tipo a JOIN tramite_frecuencia b ON a.txt_txf_id = b.txf_id
		  JOIN usuario c ON a.txt_usu_id=c.usu_id
		  WHERE txt_estado=1 ORDER BY txt_nombre;";
$db->query($sql);
while($db->next_row())
{ ?>
<tr><td colspan="2"><hr></td></tr>
   <tr>
    <td width="125" class="tit">Tipo trámite</td>
    <td width="499" class="texto"><?=$db->txt_nombre?></td>
  </tr>
  <tr> 
    <td class="tit">Descripcion</td>
    <td class="texto"><?=$db->txt_descripcion?></td>
  </tr>
  <tr>
    <td width="125" class="tit">Frecuencia</td>
    <td width="499" class="texto"><?=$db->txf_nombre?></td>
  </tr>
  <tr>
    <td width="125" class="tit">Usuario</td>
    <td width="499" class="texto"><?=$db->usu_corto?></td>
  </tr>
   <tr>
    <td width="125" class="tit">Fecha hora Ingreso</td>
    <td width="499" class="texto"><?=$db->txt_fechahora?></td>
  </tr>
<?
  $dbb = new Database();
  $sqll = "SELECT b.txp_nombre,
                  a.pxt_nombre,
				  a.pxt_descripcion,
				  a.pxt_tmpolimite,
				  a.pxt_usu_id,
				  a.pxt_fechahora,
				  c.usu_corto
			 FROM tramite_pasos a JOIN tramite_prefijo b ON a.pxt_txp_id=b.txp_id
			 JOIN usuario c ON a.pxt_usu_id =c.usu_id
			 WHERE pxt_estado=1 AND pxt_txt_id=".$db->txt_id.";";
 $dbb->query($sqll);
 $num = $dbb->num_rows();
 if($num>0)
 { ?>
 <tr>
    <td colspan="2"><table width="600" border="0">
      <tr>
        <td colspan="5" class="titulo">ETAPAS TRAMITE <?=$db->txt_nombre?></td>
        </tr>
	
      <tr>
        <td class="titulo">Nombre</td>
        <td class="titulo">Descripcion</td>
        <td class="titulo">Tiempo</td>
        <td class="titulo">Usuario</td>
        <td class="titulo">Plazo Maximo (Dias)</td>
		
      </tr>
	  <? $color = "#f0f0f0";
	     $color1 = "#ffffff";
		 $color2 = "#f0f0f0";
		 while($dbb->next_row()){
		     if($color==$color2)
			    $color = $color1;
			 else
			    $color = $color2;
		 ?>
      <tr bgcolor="<?=$color?>">
        <td class="textopeq"><?=$dbb->pxt_nombre?></td>
        <td class="textopeq"><?=$dbb->pxt_descripcion?></td>
        <td class="textopeq"><?=$dbb->txp_nombre?></td>
        <td class="textopeq"><?=$dbb->car_nombre?> - <?=$dbb->usu_corto?></td>
        <td class="textopeq" align="center"><?=$dbb->pxt_tmpolimite?></td>
      </tr>
	  <? } ?>
    </table></td>
  </tr>
<? }
}
?>
</table>