<? require_once("conf/clave.php");

/*
// Conexión con el servidor
mysql_connect("localhost", "root", "12345") or die ("error1".mysql_error());

// Selección de Base de Datos
mysql_select_db("tramites") or die ("error2".mysql_error());

$sql="INSERT INTO `tramites`.`empresas_grupo` (
`gru_id` ,
`gru_nombre` ,
`gru_estado` ,
`gru_fechahora` ,
`gru_usu_id`
)
VALUES (
NULL , 'koko', '1',
CURRENT_TIMESTAMP , '1'
);";
echo "<br>";
$res1=mysql_query($sql);
//echo $numeroRegistros=mysql_num_rows($res1); 
$res=mysql_query("select last_insert_id();");
while( $row = mysql_fetch_array( $res ) ) { echo $id = $row[0]; }

*/
$db = new Database();
$sql="INSERT INTO `tramites`.`empresas_grupo` (
`gru_id` ,
`gru_nombre` ,
`gru_estado` ,
`gru_fechahora` ,
`gru_usu_id`
)
VALUES (
NULL , 'koko', '1',
CURRENT_TIMESTAMP , '1'
);";
$db->query($sql);
$id = $db->query_last_id();
$db->next_row();
echo "id".$id ;

/*$enlace =  mysql_connect('localhost', 'root', '12345');
if (!$enlace) {
    die('No pudo conectarse: ' . mysql_error());
}
echo 'Conectado satisfactoriamente';
//mysql_close($enlace);
$resultado = mysql_query($sql);
if (!$resultado) {
    die('Consulta no válida: ' . mysql_error());
}*/

?>