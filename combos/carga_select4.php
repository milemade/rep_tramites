
<? require_once("../conf/clave.php");
//Creado por Cesar Walter Gerez en Micodigobeta.com.ar
//A manera de ejemplo solo lo realizo con array, pero para que realmente sea dinamico se debería traer las opciones de una base de datos.
$valor = $_REQUEST["id"];
//realizamos la consulta
$db = new Database();
$sql = "SELECT car_id id,car_nombre nombre FROM cargos WHERE car_estado=1 AND car_dxe_id=".$valor.";";
//el bucle para cargar las opciones
$db->query($sql);
echo "<option value='0'>SELECCIONE</0ption>";
while($db->next_row())
{
   echo "<option value='".$db->id."'>".strtoupper($db->nombre)."</option>";
}
$db->close();
?>