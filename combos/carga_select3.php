
<? require_once("../conf/clave.php");
//Creado por Cesar Walter Gerez en Micodigobeta.com.ar
//A manera de ejemplo solo lo realizo con array, pero para que realmente sea dinamico se deber�a traer las opciones de una base de datos.
$valor = $_REQUEST["id"];
//realizamos la consulta
$db = new Database();
$sql = "SELECT dxe_id id,dxe_nombre nombre FROM dep_empresa WHERE dxe_estado=1 AND dxe_sede_id=".$valor.";";
//el bucle para cargar las opciones
$db->query($sql);
echo "<option value='0'>SELECCIONE</0ption>";
while($db->next_row())
{
   echo "<option value='".$db->id."'>".strtoupper($db->nombre)."</option>";
}
$db->close();
?>