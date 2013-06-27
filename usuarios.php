<style type="text/css">
	a.ingresarr{
	//background:url(agregar.png) no-repeat top left;
	//float:right;
	margin:0;
	width:100px;
	height:19px;
	font-size:14px;
	font-weight:bold;
	padding-left:10px;
	color:#2e4762;
	text-decoration:none;
	line-height:20px;}
       .textousu {
	position:relative;
	top:0px;
	width:100%;
	height:auto;
	border:#FFF 1px solid;
	margin-top:10px;
	text-align:justify;
	font-size:12px;
	padding:10px;
	background-color:#d4d4d4;
	opacity: 0.7;
 	-moz-opacity: 0.7;
 	filter:alpha(opacity=70);
	}
</style>
<script>
function elimusu(id,n)
{
    if(confirm("Esta seguro de eliminar este registro?"))
	{
	     window.location='aplicacion.php?n'+n+'&id='+id;
	}
}
</script>
<body>
<?php
        if(isset($_POST['msg']) && $_POST['msg']!="")
	   echo "<script>alert('".$_POST['msg']."')</script>";
?>
<div id="barra">
<a href="#" class="tramites">USUARIOS</a>
<a href="logout.php"></a>
<a href="aplicacion.php?n=1" class="volver"></a>
<br class="clear" />
</div>
<div id="centro">
<!--aqui se escribe-->
<table>
<tr>
<td><h3 class="tit_bobo">ADMINISTRACION USUARIOS</h3></td>
<td><a href="usuariosexportar.php?opbus=<?=$_POST['opbus']?>&busqueda=<?=$_POST['busqueda']?>">
	<img src="imagenes/excel.png" width="48" height="48" /></a></td>
</table>    	
        <table width="1020" align="center" border="0" cellpadding="0"  >
  <tr>
    <td ><form method="post" action="aplicacion.php"><table width="842" border="0">
  <tr>
    <td width="144"><input type="text" name="busqueda" id="busqueda" required></td>
    <td width="130"><select name="opbus" id="opbus">
      <option value="0">Seleccione</option>
      <option value="car_nombre">Cargo</option>
      <option value="usu_cedula">Cedula</option>
      <option value="usu_act_id">Inactivos</option>
       <option value="usu_nombre">Nombre</option>
       <option value="usu_user">Nombre Usuario</option>
      <option value="per_nombre">Perfil</option>
     </select> 
    </td>
    <td width="102"><input class="bot" type="submit" name="buscar" id="buscar" value="Buscar"></td>
    <input type="hidden" name="n" value="5"></form>
    <td width="448"><div align="right"><a href="#" class="ingresarr" data-reveal-id="myModal"  data-animation="none"><img src="tabbed_pages/agregar.png">&nbsp;&nbsp;INGRESAR</a></div></td>
  </tr>
</table>
</td>
    <td colspan="2"><div id="myModal" class="reveal-modal">
			<? require_once("usuarios_ingresar.php"); ?>
			<a class="close-reveal-modal">&#215;</a>
</div></td>
  </tr>
  <tr class="cabecera">
    <td >Nombre</td>
    <td colspan="2">Opciones</td>
  </tr>
  <?php 
   $registros = 20;
   if(isset($_GET['pagina']) && $_GET['pagina']>0)
      $pagina = $_GET['pagina'];
   if (!isset($pagina))
   {
      $inicio = 0;
      $pagina = 1;
   }
   else 
   {
     $inicio = ($pagina - 1) * $registros;
   }
   $dbu = new Database();
   $dbu1 = new Database();
   $sqlu = 'SELECT * FROM '.$v_vistausu;
   $dbu1->query($sqlu);
   $total_registros = $dbu1->num_rows();
   $total_paginas = ceil($total_registros / $registros);
   $dbu1->close();
   if(isset($_POST['busqueda']) && $_POST['opbus']!="")
   {
         if($_POST['opbus']!= "usu_act_id")
	    $sqlu .= " WHERE ".$_POST['opbus']." LIKE '%".$_POST['busqueda']."%'";
	 else
	    $sqlu .= " WHERE usu_act_id=0";
         
   } 
   else   
     $sqlu .=" WHERE usu_estado=1";
   $sqlu .=" ORDER BY usu_nombre";
   $sqlu .= " LIMIT $inicio, $registros";
   //echo $sqlu;
   $dbu->query($sqlu);
   $class= "celda_izq";
   $class1= "celda_izq_azul";
   $class2= "celda_izq";
   while($dbu->next_row())
   { if($class==$class1)
        $class = $class2;
     else
        $class = $class1;
  ?>
  <tr class="<?=$class?>">
    <td width="377" class="txt_espacio" ><a class="<?=$class?>" href="#" data-reveal-id = "myModaled<?=$dbu->usu_id?>"  data-animation="none"><?=strtoupper($dbu->usu_nombre)?></a></td>
    <td width="32"><a href="#" data-reveal-id = "myModaled<?=$dbu->usu_id?>"  data-animation="none"><img src="tabbed_pages/editar.png" width="32" height="32" title="Editar o Modificar"/></a>
    <div id="myModaled<?=$dbu->usu_id?>" class="reveal-modal">
    <? include "usuarios_editar.php"; ?>
    <a class="close-reveal-modal">&#215;</a></td>
    <td width="32"><form action="aplicacion.php" method="POST"><input type="image" src="tabbed_pages/eliminar.png" width="32" height="32" onClick="elimusu(<?=$dbu->usu_id?>,53)" />
    <input type="hidden" name="id" value="<?=$dbu->usu_id?>"><input type="hidden" name="n" value="53"></form></td>
  </tr> 
  <?php } ?>
  
</table>

</div>
  <br />
<div align="center">
<?php  if($total_registros>0){
         if(($pagina - 1) > 0)
		 { $pag = $pagina - 1;?>
			 <a href="aplicacion.php?n=5&pagina=<?=$pag?>'" class='hoja_sin'><< Anterior</a>
	<?php	 } 
       for ($i=1; $i<=$total_paginas; $i++)
	   {
		   if ($pagina == $i) {?>
		    <a href="aplicacion.php?n=5&pagina=&pagina=<?=$i?>" class='hoja'><?=$i?></a>
			  
		   <? } else {
		      ?> 
			  
			 <a href="aplicacion.php?n=5&pagina=&pagina=<?=$i?>" class='hoja_sin'><?=$i?></a>
	<?php	}
	  }
		if(($pagina + 1)<=$total_paginas)
		 {  $pag = $pagina + 1;
		 ?>
		<a href="aplicacion.php?n=5&pagina=<?=$pag?>" class='hoja_sin'>Siguiente >></a>
<?php    }
} ?>
<!--<a href="#" class="hoja">1</a>
<a href="#" class="hoja_sin">2</a>
<a href="#" class="hoja_sin">3</a>
<a href="#" class="hoja_sin">4</a>-->
</div>
    

<!--finnnnn-->
<br class="clear" />
  <p class="textousu">
  <? $campo_mostrar="txt_texto";
     $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='usuarios' AND txt_estado=1;";
     echo $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($campo_mostrar,$sql))?>
  </p>
<br class="clear" />
</div>
<br class="clear" />
</body>