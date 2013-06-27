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
<table border="0">
  <tr>
  <td><table width="590"><tr>
    <td width="192"><label>Nombre Tipo Tr&aacute;mite</label></td>
    <td width="305"><input type="text" name="txt_nombre" required="required"></td>
  </tr>
   <? $nombre_campos_tabla = "txt_nombre|S,";?>
  <tr>
    <td><label>Frecuencia Tipo Tr&aacute;mite</label></td>
	<?
	  $query_select = "SELECT txf_id,txf_nombre FROM v_frecuencia WHERE txf_estado=1;";
	?>
    <td><?=$Gen->ComboBox($query_select,"txf_id","txf_nombre","txt_txf_id",0,"onchange='ocultar(this.value)'")?></td>
  </tr>
<? $nombre_campos_tabla .= "txt_txf_id|N,";?>  
  <tr><td colspan="2">
  <table width="590" id="repitet" style="display:none">
  <tr><td valign="top"><label>Cantidad Veces</label></td>
          <td id="veces1"><span id="veces"></span></td>
	 </tr></table><span id="valrepite"></span></td>
  </tr>
  <? $nombre_campos_tabla .= "txt_repite|S,txt_veces|N,";?>
  </table>
  </td></tr>
   <tr id="quincena" style="display:none">
    <td colspan="2"><table width="590" border="0">
  <tr>
    <td><table width="590" border="0">
      <tr>
        <td><label>Dia Quincena1</label></td>
        <td id="quin1"></td>
      </tr>
	  <? $nombre_campos_tabla .= "txt_quin1|N,";?>  

    </table></td>
  </tr>
  <tr>
    <td><table id="quincena2" width="590" border="0">
      <tr>
        <td><label>Dia Quincena2</label></td>
        <td id="quin2"></td>
      </tr>
	  <? $nombre_campos_tabla .= "txt_quin2|N,";?> 
    </table>
      <table width="590" border="0" id="ultimo" >
        <tr>
          <td width="216"><input class="nume" name="txt_ultmes" id="txt_ultmes" type="checkbox" value="S" onclick="mirar()"/><label class="num">Ultimo d&iacute;a mes </label></td>
          <td width="364"><font color="#610B0B" size="-2">Si es seleccionada esta opci&oacute;n, el segundo d&iacute;a de la quincena es el &uacute;ltimo d&iacute;a del mes.</font></td>
        </tr>
		<? $nombre_campos_tabla .= "txt_ultmes|S,";?> 
      </table></td>
  </tr>
</table></td>
  </tr>
  <tr id="corrienteff" style="display:none">
    <td colspan="2" ><table width="590" border="0">
      <tr>
        <td><label>Dias Semana</label></td>
        <td><table border="0">
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="1" /><label class="num">Lunes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="2"/><label class="num">Martes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="3"/><label class="num">Mi&eacute;rcoles</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="4"/><label class="num">Jueves</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="5"/><label class="num">Viernes</label></td>
      </tr>
      <tr>
        <td><input class="dias" type="radio" name="txt_dias" value="6"/><label class="num">S&aacute;bado</label></td>
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
          <td><textarea name="txt_descripcion" cols='50' rows='5'></textarea></td>
        </tr>
		 <? $nombre_campos_tabla .= "txt_descripcion|S,";?>
        <tr>
          <td><label>Tiempo Tr&aacute;mite (dias)</label></td>
          <td><input type="text" name="txt_tmaximo" onkeypress='return validarnumero(event);' required="required"></td>
        </tr>
		<? $nombre_campos_tabla .= "txt_fechaini|S,";?>  
		<? $nombre_campos_tabla .= "txt_tmaximo|S,";?>
      </table><span id="rep"></span></td>
  </tr>
</table>

