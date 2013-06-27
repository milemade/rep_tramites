 <? require_once("conf/clave.php");
    $busqueda = $_GET['busqueda'];
 ?>
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
.texto {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	color: #202020;
}
-->
</style>
<script>
function imprimir(){
    document.getElementById('celdaimprimir').style.display="none";
	window.print();
}
</script>
<table width="900">
 <tr><td width="900" class="titulo"><?=$nombre_aplicacion?>  Usuario: <?=$_SESSION['usu_nombre']?>  ||| Fecha hora: <?=$datetime?></td>
 <td width="100"><div align="right" id="celdaimprimir"><a href="#" onclick="imprimir();"><img src="imagenes/descarga.jpg" alt="imprimir"></a></div></td>
 </tr>
 </table>
<?
/*
Este script exporta a excel la tabla seleccionada el administrador.
Consulta los rotulos en la tabla admin_tablas para colocar 
las cabeceras del reporte
Hace una consulta en la tabla respectiva de los registros que contiene
header ( "Content-type: application/x-msexcel" );
header ( "Content-Disposition: attachment; filename=$nombre_reporte" );
header ( "Content-Description: Generador XLS" );
*/
$tabla = $_GET[tabla];
$nombre_reporte ="reporte_$tabla.xls";
if($tabla=="depxdepal")
{ ?>
<table>
<tr><td class="titulo">Sede - Departamento Grupo Empresarial || Empresa - Sede - Departamento Empresas Alianza</td><tr>
<?
  $db = new Database();
  $sql = "SELECT nombre FROM v_dxdepto ORDER BY nombre;";
  $db->query($sql);
  while($db->next_row())
  {
?>
<tr><td class="texto"><?=$db->nombre?></td></tr>
<? } $db->close();?>
</table>
   
<?php
}
if($tabla=="tramite_tipo")
{ include "imprimirtipo.php";
}
else
{
$abecedario = array( 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                         'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' ); 
$aliastabla = $abecedario[0]; //Letra alias de las tablas del sistema para la consulta de tabla relacion
//$tabla = $_GET[v_desc];
$campo_estado = $_GET['campoestado'];
$db = new Database();
$db1 = new Database(); ?>

 <table>
 <tr>
 <?
 //Consulta para extraer los nombres de los atributos de la tabla y de los
 //rotulos que van en la parte superior de la tabla que tienen Rotulo******************
 $sql_campos_superiores = "SELECT 
							axt_rotulo,axt_nombre_campo,
							axt_tabla_relacion,axt_campo_relacion,axt_campo_imprimir,axt_visualizar,axt_tipo_campo
						   FROM
						    $tabla_admin_tablas
						   WHERE 
						    axt_nombre_tabla='$tabla'
						   AND axt_rotulo<>'' ORDER BY axt_id ";
 $db->query($sql_campos_superiores);
 $num_rows = $db->num_rows();//numero de campos de la tabla**************
 $nombre_campos_tabla = "";//variable que guarda el string para hacer la consulta
 $nombre_campos_consulta = "";//variable que guarda el nombre de los campos para extraer la informacion
 $where = " WHERE $aliastabla.$campo_estado=1 ";
 $tablas_consulta = $tabla." ".$aliastabla;
 $ab = 1;
 while($db->next_row())
 {
	 $nombre_campo = $db->axt_nombre_campo;
	 $rotulo_campo = $db->axt_rotulo;
	 $tabla_relacion = $db->axt_tabla_relacion;
	 $campo_relacion = $db->axt_campo_relacion;
	 $campo_imprimir = $db->axt_campo_imprimir;
	 if($db->axt_visualizar=='SI')
 	 {  //echo $nombre_campo;
	      if($db->axt_tipo_campo=="select")
		  {     
		       //echo "ENTRAA<br>";
			   $arr_buscar[] = $campo_imprimir." LIKE '%".$busqueda."%' ";
			   //print_r($arr_buscar);
		  }
		  else
		  {
              $arr_buscar[] = "a.".$nombre_campo." like '%".$busqueda."%'";  //print_r($arr_buscar); 
		  }
     }	
	 
	 if($tabla_relacion!='' && $campo_relacion !='')
	 {//Si hay tabla relacion modifica el where de la consulta
		 $nombre_campos_tabla .= $abecedario[$ab].".".$campo_imprimir.",";
		 $tablas_consulta .= " JOIN ".$tabla_relacion." ".$abecedario[$ab]." ON ".$aliastabla.".".$nombre_campo."=".$abecedario[$ab].".".$campo_relacion." ";
		 $nombre_campos_consulta .= $campo_imprimir.",";
		 $ab++;
     } 
	 else
	 {
	     $nombre_campos_tabla .= $aliastabla.".".$nombre_campo.",";//almacena los campos de la consulta en una cadena
		 $nombre_campos_consulta .= $nombre_campo.",";
     }
	 echo "<td class='titulo'><b>".$rotulo_campo."</b></td>";
	 
 }
 echo "</tr>";
 $db->close();//Cierro el Objeto Database
 $nombre_campos_tabla = substr ($nombre_campos_tabla, 0, strlen($nombre_campos_tabla) - 1);
 //Para separar los nombres de los campos en una variable diferente
 $campo_tabla_consulta = explode(",",$nombre_campos_consulta);
 $totalcampos = count($campo_tabla_consulta) -1;
 //Se hace la consulta de los registros de la tabla***************
 $ssqltabla = "SELECT ".$nombre_campos_tabla." FROM ".$tablas_consulta." ".$where;
 if($busqueda!='')
 {
    for($k=0;$k<count($arr_buscar);$k++)
	{
	   $query_buscar = $ssqltabla." AND ".$arr_buscar[$k]." ";
	   //echo $k."<br><br>".$query_buscar;
	   $db = new Database();
	   $db->query($query_buscar);
	   $num_rows = $db->num_rows();
	   $db->close();
	   //echo "numrows es".$num_rows."<br>";
	   if($num_rows>0)
	   {
		  $ssqltabla = $query_buscar; //exit;
	   }
	   else
	   {
	      $query_buscar = "";
	   }
	}
 
 }
 //echo $ssqltabla;
 $db1->query($ssqltabla);
 while($db1->next_row())
 {     
     echo "<tr>";
	 for($ib=0; $ib<$totalcampos; $ib++)
	 {  //la consulta del valor de los campos es dinamica
	    //de acuerdo con los campos suministrados en el admin_tablas 
		 $valor = $campo_tabla_consulta[$ib];
		 $valor_campo = $db1->$valor;
		 echo "<td valign='top' class='texto'>".utf8_decode($valor_campo)."</td>";
	 }
	 echo "</tr>";
 }
 echo "</table>";
 $db1->close();//Cierro el Objeto Database
 }
?>
