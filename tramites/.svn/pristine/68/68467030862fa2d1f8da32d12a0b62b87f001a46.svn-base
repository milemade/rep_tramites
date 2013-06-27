
<? require_once("../conf/clave.php");
//Creado por Cesar Walter Gerez en Micodigobeta.com.ar
//A manera de ejemplo solo lo realizo con array, pero para que realmente sea dinamico se debería traer las opciones de una base de datos.
$valor = $_REQUEST["id"];
//realizamos la consulta
$db1 = new Database();
$sql1 = "SELECT car_revisa_id FROM cargos WHERE car_estado=1 AND car_id=".$valor.";";
$db1->query($sql1);
$db1->next_row();
$clider = $db1->car_revisa_id;
$db1->close();
$db = new Database();
$sql = "SELECT usu_id id,usu_corto nombre FROM v_usuario WHERE usu_car_id=(SELECT car_revisa_id FROM cargos WHERE car_estado=1 AND car_id=".$valor.");";
//el bucle para cargar las opciones
$db->query($sql);
echo "<option value='0'>SELECCIONE</0ption>";
while($db->next_row())
{
   echo "<option value='".$db->id."'>".strtoupper($db->nombre)."</option>";
}
$db->close();
?>