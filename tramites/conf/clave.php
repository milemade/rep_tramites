<? session_start();
//echo $_SERVER['DOCUMENT_ROOT']; exit;
//------------- Servidor donde esta siendo ejecutado ----------------
$servidor = "http://localhost/tramites";//Local
$ruta_fisica = "C:/AppServ/www/tramites";
//$ruta_fisica = "C:/AppServ/www/tramites";
date_default_timezone_set('America/Bogota');
$nombre_imagenes="imagenes";
//------------- Librerias Requeridas----------------

require ("$ruta_fisica/lib/database.php");
require_once("$ruta_fisica/lib/fechas.php");
require_once("$ruta_fisica/lib/class_General.php");
require_once("$ruta_fisica/lib/class_tramites.php");
$Gen = new General();
$Tra = new tramites();
$Fes = new festivos();
$Fec = new Fechas();
/*----------------------------------------------------------------------
Esta sección corresponde a las tablas de la Base de Datos
----------------------------------------------------------------------*/
$idioma=1;
 
//Listado tablas

$tabla_admin_menu="admin_menu";
$tabla_admin_tablas="admin_tablas";
$tabla_admin_permisos="admin_permisos";
$tabla_admin_tipo_permisos="admin_tipo_permisos";
$tabla_admin_perfiles="admin_perfiles";
$tabla_admin_textos="admin_textos";
$t_usuarios="admin_usuarios";


$t_usuario = "usuario";
$t_cargos = "cargos";
$t_perfil = "perfil";
$t_tramite_tipo = "tramite_tipo";
$t_tramite_categoria = "tramite_categoria";
$t_tramite_tipo_origen = "tramite_tipo_origen";
$t_tipo_documento = "tipo_documento";
$t_departamento = "departamento";
$t_ciudad = "ciudad";
$t_dep_empresa = "dep_empresa";
$t_usuario = "usuario";
$t_empresa_sedes = "empresa_sedes";
$t_empresa_cliente = "empresa_cliente";
$t_tipo_empresacliente = "tipo_empresacliente";
$t_tramite = "tramite";
$t_tramite_reasignacion = "tramite_reasignacion";
$t_tramite_pasos = "tramite_pasos";
$t_textos = "textos";
$t_tramite_observaciones = "tramite_observaciones";
$t_tramite_prefijo = "tramite_prefijo";

/*VISTAS*/
$v_vistausu = "v_vistausu";
$v_usuario = "v_usuario";





/*---------------------------------------------------------------------- 
        Esta sección corresponde a los parámetros generales 
----------------------------------------------------------------------  
*/

$nombre_aplicacion = $Gen->limpiarCaracteresEspeciales($Gen->parametros("titulo_home"));
$pieaplicacion = $Gen->limpiarCaracteresEspeciales($Gen->parametros("pie_home"));



$mailadministrador =  $Gen->parametros("mailadministrador");

//------------- Directorios para almacenar archivos -----------------

$path_imagenes_http = "$servidor/$nombre_imagenes";
$path_iconos = "$servidor/$nombre_imagenes/iconos";
$path_imagenes = $ruta_fisica."/$nombre_imagenes/";
$path_arch_planos = $ruta_fisica."/temp/";
$path_documentos = $ruta_fisica."/documentos/";
$path_ver_documentos = $servidor."/documentos/";
$path_ropa = $ruta_fisica."/fotos/";
$path_swf = $ruta_fisica."/swf/";
$path_downloads_copy = $ruta_fisica."/downloads/";
$path_downloads_http = "$servidor/downloads";


//------------- Fechas----------------

$fecha_completa = Date('Y-m-d');
$fecha_plano = Date('Y-m-d');
$fecha_calculo = Date('d/m/Y');
$hora_mysql=Date('H:i:s');
$datetime=Date('Y-m-d H:i:s');
$anio = Date('Y');
  
