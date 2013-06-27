<?php
     require_once("conf/clave.php");
?>
<link rel="stylesheet" media="all" type="text/css" href="tabbed_pages/interna_pages.css" />
<script> function cambiarDisplay(id) {
  if (!document.getElementById) return false;
  fila = document.getElementById(id);
  if (fila.style.display != "none") {
    fila.style.display = "none"; //ocultar fila
  } else {
    fila.style.display = ""; //mostrar fila
  }
} </script>
  
<div id="loginPan_vtresss">
<form name="frm" action="" method="post" target="blank">
 <table border="0">
 <tr>
 <td colspan="3"><a href="imprimir-listado-observaciones.php?id=<?=$_GET['id']?>" target="blank"><img src="imagenes/ico.imprimir.png" alt="impresion observaciones <?=$_SESSION['consecutivo']?>"></a></td>
 </tr>
        <?php
	      $dblis = new Database();        
		  $sqllis = "SELECT txo_id,txo_fechahora,txo_id,tra_consecutivo,car_nombre,txo_observaciones,txo_reales 
		             FROM v_obser WHERE tra_id=".$_GET['id']." ORDER BY txo_fechahora;";
		  $dblis->query($sqllis);
		  $class = "celda_izq";
		  $class1 = "celda_izq";
		  $class2 = "celda_izq_azul";
		  while($dblis->next_row())
		  { if($class == $class1)
		        $class = $class2;
			else
			    $class = $class1;
			$segundo = $dblis->txo_id + 1;
		    $oreales = utf8_decode($dblis->txo_reales);
			$orealess = strtoupper($oreales);
			$ocliente = utf8_decode($dblis->txo_observaciones);
			$oclientee = strtoupper($ocliente);
		?>
 <tr class="celda_izq" id="row<?=$dblis->txo_id?>" onClick="cambiarDisplay('row<?=$segundo?>')">
	   <td width="183"><?=$dblis->txo_fechahora?></td>
        <td width="759"><?=$dblis->car_nombre?></td>
        <td width="30"><img src="imagenes/plus_sign.png" width="8" height="8" /></td>
      </tr>
	   <tr class="celda_izq" id="row<?=$segundo?>" onClick="cambiarDisplay('row<?=$segundo?>')" style="display:none">
       <td colspan="3"><? if($_SESSION['usu_per_id']<5){?><font color="#FA0808">* <?=$orealess?></font><br><? } ?>
		                  *<?=$oclientee?></td>
      </tr>
	  <? } $dblis->close();?>   
    </table>
</form>
 <br class="clear" />
</div>