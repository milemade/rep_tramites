
<? require_once("../conf/clave.php");
//Creado por Cesar Walter Gerez en Micodigobeta.com.ar
//A manera de ejemplo solo lo realizo con array, pero para que realmente sea dinamico se debería traer las opciones de una base de datos.
$valor = $_REQUEST["id"];
//realizamos la consulta
$db = new Database();
$sql = "SELECT usu_id id,nom nombre FROM v_depxdepal WHERE dxd_axe_id=".$valor." ORDER BY nom;";
//el bucle para cargar las opciones
$db->query($sql);
echo "<option value='0'>SELECCIONE</option>";
echo "<option value='-1'>--OTRO--</option>";
while($db->next_row())
{
   echo "<option value='".$db->id."'>".strtoupper($db->nombre)."</option>";
}
$db->close();
?>
