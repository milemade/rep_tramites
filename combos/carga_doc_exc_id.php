
<? require_once("../conf/clave.php");
//Creado por Cesar Walter Gerez en Micodigobeta.com.ar
//A manera de ejemplo solo lo realizo con array, pero para que realmente sea dinamico se deber�a traer las opciones de una base de datos.
$valor = $_REQUEST["id"];
//realizamos la consulta
$db = new Database();
$sql = "SELECT exc_id id,exc_nombre nombre FROM empresa_cliente WHERE exc_txe_id=".$valor." ORDER BY nombre;";
//el bucle para cargar las opciones
$db->query($sql);
echo "<option value='0'>SELECCIONE</0ption>";
echo "<option value='-1'>--OTRO--</0ption>";
while($db->next_row())
{
   echo "<option value='".$db->id."'>".strtoupper($db->nombre)."</option>";
}
$db->close();
?>
