<? require_once("conf/clave.php");
   //$_POST['v_id'] = 1;
   $dbss = new Database();
   $sqlss = 'SELECT a.txt_txf_id,a.txt_nombre,a.txt_dias,a.txt_repite,a.txt_veces,a.txt_quin1,
                    a.txt_quin2,a.txt_ultmes,a.txt_descripcion,a.txt_tmaximo
               FROM '.$t_tramite_tipo.' a JOIN tramite_frecuencia b ON a.txt_txf_id = b.txf_id
			   WHERE txt_id='.$_POST['v_id'].';';
  $dbss->query($sqlss);
  $dbss->next_row();
  $txt_txf_id = $dbss->txt_txf_id;
  $txt_nombre = $dbss->txt_nombre;
  $txt_dias = $dbss->txt_dias;
  if($txt_dias==1)
     $checked1 = "checked";
  if($txt_dias==2)
     $checked2 = "checked";
  if($txt_dias==3)
     $checked3 = "checked";
  if($txt_dias==4)
     $checked4 = "checked";
  if($txt_dias==5)
     $checked5 = "checked";
  if($txt_dias==6)
     $checked6 = "checked";
  $txt_repite = $dbss->txt_repite;
  $txt_veces = $dbss->txt_veces;
  if($txt_veces>0)
  {
     $htmltxt_veces = '<input name="txt_veces" type="number" class="num" min="1" value="'.$txt_veces.'" required>';
  }
  $txt_quin1 = $dbss->txt_quin1;
  $htmltxt_quin1 = '<input type="number" name="txt_quin1" value="'.$txt_quin1.'" min="1" max="15" required>';
  $txt_quin2 = $dbss->txt_quin2;
  if($txt_quin2>15)
  {
     $htmltxt_quin2 = '<input type="number" name="txt_quin2" min="16" max="31" value="'.$txt_quin2.'" required>';
  }
  $txt_ultmes = $dbss->txt_ultmes;
  $txt_descripcion = $dbss->txt_descripcion;
  $txt_tmaximo = $dbss->txt_tmaximo;
  $dbss->close();
?>
<script>
function ocultar(valor)
{ //alert(valor);
   var w = document.getElementById('repitet');
   var x = document.getElementById('quincena');
   var y = document.getElementById('corrienteff');
   if(valor==10)//Quincenal
   {
	  w.style.display='block';
	  x.style.display='block';
	  y.style.display='none';
	  quin1.innerHTML ='<input type=\'number\' name=\"txt_quin1\" min=\"1\" max=\"15\" onkeypress=\'return validarnumero(event);\' required>';
	  quin2.innerHTML ='<input type=\'number\' name=\"txt_quin2\" min=\"16\" max=\"31\" onkeypress=\'return validarnumero(event);\'  onblur=\"mirar()\">';
	  valrepite.innerHTML ='<input type=\"hidden\" name=\"txt_repite\" value=\"S\"/>';
	  veces.innerHTML = '<input required class=\"num\" name=\"txt_veces\" type=\"number\" min=\"1\" >';
   }
   if(valor==7)//Sin repeticion 
   {
      w.style.display='none';
	  x.style.display='none';
	  y.style.display='none';
	  rep.innerHTML ='<input type=\"hidden\" name=\"txt_repite\" value=\"N\"/>';
	  document.frm.txt_quin2.value='';	  
   }
   if(valor!=10 && valor!=7)
   { //alert('DESEO');
      w.style.display='block';
	  x.style.display='none';
	  y.style.display='block';
	  valrepite.innerHTML ='<input type=\"hidden\" name=\"txt_repite\" value=\"S\"/>';
	  veces1.innerHTML = '<input required class=\"num\" name=\"txt_veces\" type=\"number\" min=\"1\" >';
	  document.frm.txt_quin2.value='';
   }
}
function mirar()
{
   if(frm.txt_ultmes.checked==true)
   {
	  var e = document.getElementById('quincena2');
	  e.style.display='none';
   }
   if(frm.txt_ultmes.checked==false)
   {
	  var e = document.getElementById('quincena2');
	  e.style.display='block';
   }
   if(frm.txt_quin2.value>0)
   {
      var m = document.getElementById('ultimo');
	  m.style.display='none';
   }
   if(frm.txt_quin2.value=='')
   {
      var m = document.getElementById('ultimo');
	  m.style.display='block';
   }
}
</script>
<?
   if($txt_txf_id==10)
   {
       $nonerepitet = "block";
	   $nonequincena = "block";
	   $nonecorrienteff = "none";
   }
   if($txt_txf_id==7)
   {
	   $nonerepitet = "none";
	   $nonequincena = "none";
	   $nonecorrienteff = "none";
   }
   if($txt_txf_id!=7 && $txt_txf_id!=10)
   {
	   $nonerepitet = "block";
	   $nonequincena = "none";
	   $nonecorrienteff = "block";
   }
   ?>
<table border="0">
  <tr>
  <td><table width="590"><tr>
    <td width="192"><label>Nombre Tipo Tr&aacute;mite</label></td>
    <td width="305"><input type="text" name="txt_nombre" required="required" value="<?=strtoupper($txt_nombre)?>"></td>
  </tr>
   <? $nombre_campos_tabla = "txt_nombre|S,";?>
  <tr>
    <td><label>Frecuencia Tipo Tr&aacute;mite</label></td>
	<?
	  $query_select = "SELECT txf_id,txf_nombre FROM v_frecuencia WHERE txf_estado=1;";
	?>
    <td><?=$Gen->ComboBox($query_select,"txf_id","txf_nombre","txt_txf_id",$txt_txf_id,"onchange='ocultar(this.value)'")?></td>
  </tr>
<? $nombre_campos_tabla .= "txt_txf_id|N,";?>  
  <tr><td colspan="2">
  <table width="590" id="repitet" style="display:<?=$nonerepitet?>">
  <tr><td valign="top"><label>Cantidad Veces</label></td>
          <td id="veces1"><?=$htmltxt_veces?><span id="veces"></span></td>
	 </tr></table><span id="valrepite"></span></td>
  </tr>
  <? $nombre_campos_tabla .= "txt_repite|S,txt_veces|N,";?>
  </table>
  </td></tr>
   <tr id="quincena" style="display:<?=$nonequincena?>">
    <td colspan="2"><table width="590" border="0">
  <tr>
    <td><table width="590" border="0">
      <tr>
        <td><label>Dia Quincena1</label></td>
        <td id="quin1"><?=$htmltxt_quin1?></td>
      </tr>
	  <? $nombre_campos_tabla .= "txt_quin1|N,";?>  

    </table></td>
  </tr>
  <tr>
    <td><table id="quincena2" width="590" border="0">
      <tr>
        <td><label>Dia Quincena2</label></td>
        <td id="quin2"><?=$htmltxt_quin2?></td>
      </tr>
	  <? $nombre_campos_tabla .= "txt_quin2|N,";?> 
    </table>
      <table width="590" border="0" id="ultimo" >
	  <? if($txt_ultmes=='S'){?>
        <tr>
          <td width="216"><input class="nume" name="txt_ultmes" id="txt_ultmes" type="checkbox" value="S" onclick="mirar()"/><label class="num">Ultimo d&iacute;a mes </label></td>
          <td width="364"><font color="#610B0B" size="-2">Si es seleccionada esta opci&oacute;n, el segundo d&iacute;a de la quincena es el &uacute;ltimo d&iacute;a del mes.</font></td>
        </tr>
		<? $nombre_campos_tabla .= "txt_ultmes|S,";?> 
		<? } ?>
      </table></td>
  </tr>
</table></td>
  </tr>
  <tr id="corrienteff" style="display:<?=$nonecorrienteff?>">
    <td colspan="2" ><table width="590" border="0">
      <tr>
        <td><label>Dias Semana</label></td>
        <td><table border="0">
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="1" <?=$checked1?>/><label class="num">Lunes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="2" <?=$checked2?>/><label class="num">Martes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="3" <?=$checked3?>/><label class="num">Mi&eacute;rcoles</label></td>
      </tr>
      <tr> 
        <td><input class="dias" type="radio" name="txt_dias" value="4" <?=$checked4?>/><label class="num">Jueves</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="5" <?=$checked5?>/><label class="num">Viernes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="6" <?=$checked6?>/><label class="num">S&aacute;bado</label></td>
      </tr>
	  <? $nombre_campos_tabla .= "txt_dias|N,";?>
    </table></td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td colspan="2">
      <table width="590" border="0">
        
        <tr>
          <td><label>Descripcion Tr&aacute;mite</label></td>
          <td><textarea name="txt_descripcion" cols='50' rows='5'><?=strtoupper($txt_descripcion)?></textarea></td>
        </tr>
		 <? $nombre_campos_tabla .= "txt_descripcion|S,";?>
        <tr>
          <td><label>Tiempo Tr&aacute;mite (dias)</label></td>
          <td><input type="text" name="txt_tmaximo" onkeypress='return validarnumero(event);' required="required" value="<?=$txt_tmaximo?>"></td>
        </tr>
		<? $nombre_campos_tabla .= "txt_tmaximo|S,";?>
      </table><span id="rep"></span></td>
  </tr>
  <tr>
  <td></td>
  </tr>
  
</table>

