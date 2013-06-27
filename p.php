<?
   include "conf/clave.php";
   $sqll = "INSERT INTO `tramites`.`tramite_tipo` (
`txt_id` ,
`txt_nombre` ,
`txt_descripcion` ,
`txt_estado` ,
`txt_fechahora` ,
`txt_usu_id`
)
VALUES (select last_insert_id();
NULL , 'ji', '', '1',
CURRENT_TIMESTAMP , ''
);";  
$sql = "INSERT INTO `tramites`.`textos` (
`txt_id` ,
`txt_pagina` ,
`txt_texto` ,
`txt_estado`
)
VALUES (
NULL , 'victor', '', '1'
);";
$s = "select last_insert_id() ultimo;";  
 $db = new Database(); 
 $db->query($sql); 
 echo "VES".$db->insert_id();
 echo "<br>";
 $db->query($s);
 $db->next_row();
 echo $db->ultimo;
  echo "<br>";
  $sw = "SELECT * FROM tramite_tipo WHERE txt_id=13;";
  $dbb = new Database();
  $dbb->query($sw);
  $dbb->next_row();
  echo $dbb->num_fields();
  echo "<br>ll";
  echo $dbb->get_field("txt_nombre");
 
?>