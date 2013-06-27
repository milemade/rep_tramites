<?php
   echo $idtramite = $POST['id'];
?>
<div id="loginPan_vtres">
<div class="cabecera">Observaciones <?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
<form name="frm" action="#" method="post">
 <table border="0" width="100%" bgcolor="#f2f2f2">  
      <tr class="celda_izq">
    <td width="150"><label>Consecutivo Tr&aacute;mite:</label></td>
    <td width="480"><input name="consecutivo" type="text" value="<?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?>" readonly/></select></td>
  </tr>
  <? if($_SESSION['usu_per_id']<5){?>
  <tr class="celda_izq">
    <td><label>Observaciones Internas</label></td>
    <td width="480"><textarea name="txo_reales" id="txo_reales" COLS="60" ROWS="5"></textarea></td>
  </tr>
  <? } ?>
  <tr class="celda_izq">
    <td colspan="2">&nbsp;</td>
    </tr>
  <tr class="celda_izq">
    <td><label>Observaciones</label></td>
    <td><textarea name="txo_observaciones" id="txo_observaciones" cols="60" rows="5"></textarea></td>
  </tr>
  <tr class="celda_izq">
  <td><label>Estado Tramite</label></td>
  <td><?php $ssxl = "SELECT tra_ext_id FROM tramite WHERE tra_id=".$Tra->idtramite($_SESSION['consecutivo']); $estadoactual = $Gen->GetUnDato("tra_ext_id",$ssxl);
             $PSql = "SELECT ext_id,ext_nombre FROM tramite_estado WHERE ext_estado=1 AND ext_id<>6;";
	         echo $Gen->ComboBox($PSql, ext_id,ext_nombre,txo_ext_id,$estadoactual); ?></td>
  </tr>
  <tr class="celda_izq">
    <td colspan="2">&nbsp;</td>
    </tr>
<tr>
  <td ><div align="right">&nbsp;</div></td></tr>
</table>
<input type="submit" class="button" value="Guardar">
<br />
<input type="hidden" name="n" value="46">
<input type="hidden" name="txo_tra_id" value="<?=$_POST['id']?>">
<input type="hidden" name="id" value="<?=$_POST['id']?>">
<input type="hidden" name="txo_ip" value="<?=$Gen->nombreequipo()?>">
<input type="hidden" name="txo_usu_id" value="<?=$_SESSION['usu_id']?>">
 </form>
 <br class="clear" />
 </div>
 <div class="cabecera">Observaciones <?php if(isset($_SESSION['consecutivo']) && $_SESSION['consecutivo']!='') echo $_SESSION['consecutivo']; else echo "";?></div>
 <iframe height="370" width="100%" src="listado_observaciones.php?id=<?=$_POST['id']?>" marginwidth="0" marginheight="0"></iframe>
 

