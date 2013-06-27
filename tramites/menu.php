<div id="barra">
<a href="logout.php"></a>
</div>
<div id="centromenu">

<?php $dbmm = new Database();
      $ssqlm = "SELECT a.mxp_mod_id
	          FROM modulo_perfil a
	          JOIN modulo b ON a.mxp_mod_id = mod_id AND b.mod_estado =1
	          JOIN perfil c ON a.mxp_per_id = c.per_id AND c.per_estado =1
	          WHERE a.mxp_per_id =".$_SESSION['usu_per_id']." AND mxp_estado=1;";
      $dbmm->query($ssqlm);
      while($dbmm->next_row())
      {
         $arrmod[] = $dbmm->mxp_mod_id;
      }
      $dbmm->close();
      //print_r($arrmod);
?>

<?php if (in_array(1, $arrmod)) { ?>
<div class="izq">
<a href="n.php?n=3" class="Ntooltip" onclick="document.forma3.submit();"><img src="imagenes/configuracion.png" alt="" width="100" height="129" class="conf" /><br />
<h3>CONFIGURACION</h3><span>
     <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM ".$t_textos." WHERE txt_pagina='menu1' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</span></a>
<br class="clear" />
</div>
<?php }?>

<?php if (in_array(2, $arrmod)) { ?>
<div class="der">
<a href="n.php?n=4&ban=1" class="Ntooltip"><img src="imagenes/tramite.png" alt="" width="100" height="129" class="conf" /><br />
<h3>GESTION DEL TRAMITE</h3><span>
     <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM ".$t_textos." WHERE txt_pagina='menu2' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</span></a>
<br class="clear" />
</div>
<br class="clear" />
<?php } ?>
<?php if (in_array(3, $arrmod)) { ?>
<div class="izq">
<a href="n.php?n=5" class="Ntooltip"><img src="imagenes/usuarios.png" alt=""width="100" height="129" class="conf" /><br />
<h3>USUARIOS</h3><span>
     <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM ".$t_textos." WHERE txt_pagina='usuarios' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</span></a> 
</div>
<?php } ?>
<?php if (in_array(4, $arrmod)) { ?>
<div class="der">
<a href="n.php?n=6" class="Ntooltip"><img src="imagenes/estadisticas.png" alt="" width="100" height="129" class="conf" /><br />
<h3>INFORMES Y ESTADISTICAS</h3>
<span>
     <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM ".$t_textos." WHERE txt_pagina='informes' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</span></a>
<br class="clear" />
</div>
<?php } ?>
<br class="clear" />

<div id="txt_inferior">
<p class="texto">
                   <? $campo_mostrar="txt_texto";
                      $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='menu';";
                      echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
</p>
<br class="clear" />
</div>
<br class="clear" />
