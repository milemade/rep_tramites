<?php session_start();
 require_once("conf/clave.php");
//print_r($_POST); exit;
 //require_once("tiemposesion.php");
 ?>
 <?php
   if(isset($_POST['n']) && $_POST['n']>0)
        $n = $_POST['n'];
   if(isset($_GET['n']) && $_GET['n']>0)
        $n = $_GET['n'];
   if(isset($_POST['mio']) && $_POST['mio']>0)
        $mio = $_POST['mio'];
   if(isset($_POST['b']) && $_POST['b']>0)
        $b = $_POST['b']; 
    if($_GET['id']>0)
	   $_POST['id'] = $_GET['id'];
  // print_r($_POST); 
  /////////
  
?>
<?php
/* PARA CAPTURAR INFORMACION EQUIPO
if($_SERVER["HTTP_X_FORWARDED_FOR"]){
echo "La Ip de tu proxy es:{$_SERVER["REMOTE_ADDR"]}<br>";
echo "Tu IP es:{$_SERVER["HTTP_X_FORWARDED_FOR"]}";
}else{
echo "NO HAY PROXY<BR>";
echo "Tu IPyy es:{$_SERVER["REMOTE_ADDR"]}<br>";
////////////NOMBRE EQUIPO INTRANET///////////////////////
$hostname = explode(".", gethostbyaddr($_SERVER['REMOTE_ADDR']));
echo "NOMBRE EQUIPO remoteaddrr: ".$hostname[0]; 
echo "<br>"; 
echo PHP_uname('a');		
				
}*/

?> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?=$nombre_aplicacion?></title>
<script language="javascript" type="text/javascript" src="kalendar/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="kalendar/jquery.kalendar.min.js"></script>
<script type="text/javascript" src="reveal/jquery.reveal.js"></script>
<script language="javascript" type="text/javascript">
	$(document).ready(function(){
		$(".test").kalendar();
	});
</script>
<link rel="stylesheet" href="kalendar/kalendar.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="tabbed_pages/interna_pages.css" />
<link rel="stylesheet" type="text/css" href="acordeon.css" />
<link rel="stylesheet" href="reveal/reveal.css">
<link href="tools.css" rel="stylesheet" type="text/css" />
<link href='imagenes/loguito.png' rel='shortcut icon' type='image/x-icon'/>
<link href='imagenes/loguito.png' rel='icon' type='image/x-icon'/> 
<SCRIPT LANGUAGE="JavaScript">
function validarnumero(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
    //patron =/[A-Za-z\s]/; // 4
    patron = /\d/; // Solo acepta numeros
    //patron = /\w/; // Acepta numeros y letras
    //patron = /\D/; // No acepta numeros
    //patron =/[A-Za-z��\s]/; // igual que el ejemplo, pero acepta tambien las letras � y �
    //patron = /[ajt69]/;
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
} 
</script>
<script type="text/javascript"> 
/*FUNCION PARA TABULAR*/           
function handleEnter (field, event) {
	var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;		if (keyCode == 13) {
		var i;
		for (i = 0; i < field.form.elements.length; i++)
			if (field == field.form.elements[i])
				break;
		i = (i + 1) % field.form.elements.length;
		field.form.elements[i].focus();
		return false;
	}
 	else
	return true;}
</script>
<script>
//Codigo Agrandar textarea
function agrandar(e){       
            
var code = (document.all) ? event.keyCode:e.which;
var ctrl = (document.all) ? event.ctrlKey:e.modifiers & Event.CONTROL_MASK;
                    
var k=null;
(e.keyCode) ? k=e.keyCode : k=e.which;
area=document.forms['formulario'].TAestado.value;
lineas=area.split('\n');
            
for(i in lineas){
    var ubound=i;
}       
            
ubound=new Number(ubound)+1;
if (ubound>10){
    document.forms['formulario'].TAestado.rows=10;
    document.getElementById('TAestado').className="TAestadoMax";
}else{
if(k==13 ){             
                
    document.forms['formulario'].TAestado.rows
        document.forms['formulario'].TAestado.rows +1;  
}
else
{
    document.forms['formulario'].TAestado.rows=ubound;
    document.getElementById('TAestado').className="TAestadoNor";
}                   
}
if (ubound==1){
document.forms['formulario'].TAestado.rows=2;
}                       
}
//Fin Codigo Agrandar textarea
</script>
<style>
a.Ntooltip {
position: relative; /* es la posici�n normal */
text-decoration: none !important; /* forzar sin subrayado */
color:#0080C0 !important; /* forzar color del texto */
font-weight:normal !important; /* forzar negritas */
font-size: 12px;
}

a.Ntooltip:hover {
z-index:999 !important;  /* va a estar por encima de todo */
/*background-color:#fff !important;  DEBE haber un color de fondo */
}

a.Ntooltip span {
display: none; /* el elemento va a estar oculto */
}

a.Ntooltip:hover span {
display: table-caption; /* se fuerza a mostrar el bloque */
position: absolute; /* se fuerza a que se ubique en un lugar de la pantalla */
//top:2em; left:2em; /* donde va a estar */
width:450px; /* el ancho por defecto que va a tener */
padding:5px; /* la separaci�n entre el contenido y los bordes */
background-color: #0080C0; /* el color de fondo por defecto */
color: #FFFFFF; /* el color de los textos por defecto */
}
</style>
<script> function cambiarDisplay(id) {
  if (!document.getElementById) return false;
  fila = document.getElementById(id);
  if (fila.style.display != "none") {
    fila.style.display = "none"; //ocultar fila
  } else {
    fila.style.display = ""; //mostrar fila
  }
} </script>
<script type="text/javascript" language="javascript" src="easytabs.js"></script>
</head>
<body onload="if(document.frm.txt_quin2.value==0) document.frm.txt_quin2.value='';if(document.frm.txt_quin1.value==0) document.frm.txt_quin1.value='';">
<div id="cuerpo_int">

<div class="logo">

<a href="index.php"><img src="imagenes/logo_centro_int.png" alt="Centro de Soluciones" width="428" height="76" class="left" /></a>

<div id="usuario"><h2 class="txt_azul"><?php echo $_SESSION['usu_nombre'];?></h2>
</div>

<br class="clear" />
</div>

<!--AQUI COMIENZA-->
<?php if($n==1) {

   require_once("menu.php");
}  
if($n==11) 
{
   require_once("registrese.php"); 
} 
if($n==12) {
    require_once("olvidopassword.php"); 
} ?>
<?php
   if($n==121)
   {
        require_once("enviopassword.php");
   }
?>
<?php
   if($n==2)
   {
       require_once("buscartramite.php");
   }
?>
<?php
   if($n==3)
   { 
      require_once("configuracion.php");
	  //require_once("cargar/index.html");
   }
?>

<?php
   if($n==4)
   { 
      unset($_SESSION['consecutivo']);
	  unset($_SESSION['departamento']);
	  unset($_SESSION['ciudad']);  
	  require_once("tramites.php");
   }
?>
<?php
  if($n==41)
  {    //GUARDA EL NUEVO TRAMITE
       //Funcion que genera el consecutivo con las del departamento de la empresa remitente
       $consecutivo = $Tra->consecutivo($_POST['tra_axe_id']); 
	   $_POST['tra_consecutivo'] = $consecutivo;
       $Valorestramite = "tra_ciu_id|N,tra_axe_id|N,tra_txt_id|N,tra_nombre|S,tra_cxt_id|N,tra_txo_id|N,tra_prioridad|N,
                          tra_consecutivo|S,tra_observaciones|S,tra_usu_id|N,tra_equipo|S,tra_ext_id|N";  
       $idnew = $Gen->SetValores($Valorestramite,$t_tramite); //Id del nuevo tramite
	   if($idnew>0)
	   {     //Si guarda registro
	         $_SESSION['consecutivo'] = $consecutivo;
			 $_SESSION['tra_axe_id'] = $_POST['tra_axe_id'];
	         $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Ingreso tramite".$consecutivo);//Funcion para almacenar actividad del usuario registrado
             //Se ingresa registro en tablas tramite_observaciones y tramite_seguimiento comienzaseguimiento del mail
	         $guardoobs = $Tra->Observaciones($idnew,'',$_POST['tra_observaciones'],1,$_POST['tra_equipo'],$_POST['tra_usu_id'],1);
	         $guardoseg =$Tra->seguimiento($idnew,$_POST['tra_usu_id'],1,$_POST['txr_usuasig'],$_POST['tra_equipo']);
	   //Envia mail al usuario asignado y al supervisor Comienza a contar los dias.*****************++++
	   
	  
      ?>
      <form name="form" action="aplicacion.php" method="POST">
      <input type="hidden" name="id" value="<?=$idnew?>">
	  <input type="hidden" name="consecutivo" value="<?=$consecutivo?>">
      <input type="hidden" name="n" value="4">
	  <input type="hidden" name="msg" value="Registro Guardado Satisfactoriamente!">
      </form>
      <script>document.form.submit();</script>
<?php      
 exit;} }
?>
<?php if($n==42){ //Edita el tramite en pantalla solo la información general
      $Valorestramite = "tra_ciu_id|N,tra_axe_id|N,tra_txt_id|N,tra_nombre|S,tra_cxt_id|N,tra_txo_id|N,
	                     tra_prioridad|N,tra_observaciones|S,tra_usu_id|N,tra_equipo|S"; 
	  $Gen->SetDatos($Valorestramite,"tramite","tra_id=".$_POST['idedi']);
	  $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Modifico tramite ".$_SESSION['consecutivo']);
	  $guardoobs = $Tra->Observaciones($_POST['idedi'],'Se modificaron los datos del tramite '.$_SESSION['consecutivo'],'',1,$_POST['tra_equipo'],$_POST['tra_usu_id']);
	  //Si se va a cambiar Usuario Asignado debe reasignar por la pestaña de observaciones
?>
 <form name="form" action="aplicacion.php" method="POST">
      <input type="text" name="id" value="<?=$_POST['idedi']?>">
	  <input type="hidden" name="n" value="4">
	  <input type="hidden" name="msg" value="Registro Modificado satisfactoriamente!">
      </form>
      <script>document.form.submit();</script>
<?php      
 exit; }
?>
<?php 
     if($n==433){ // Agregar Documento Principal 
	   //echo "ENTRA";
        $Valores = "doc_tra_id|N,doc_ciu_id|N,doc_txd_id|N,doc_usudestinoid|N,doc_usudestino|S,doc_axe_id|N,doc_exc_id|N,
		            doc_entremitente|S,doc_remitente|S,doc_usu_id|N,doc_equipo|S,
		            doc_fecdoc|S,doc_asunto|S,doc_obsdocmento|S,doc_anexos|S,doc_txe_id|N";
        $iddoc = $Gen->SetValores($Valores,"documento");
		$Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Ingreso Documento tramite".$_POST['tra_consecutivo']); 
		if($iddoc>0)
		{
		   $mesg =  "Registro Almacenado Satisfactoriamente";
		 ?>
	<form name="frrm" action="aplicacion.php" method="post">
	<input type="hidden" name="n" value="4">
	<input type="hidden" name="id" value="<?=$_POST['doc_tra_id']?>">
	<input type="hidden" name="iddoc" value="<?=$iddoc?>">
	<input type="hidden" name="msg" value="<?=$msg?>">
	</form>
	<script>document.frrm.submit();</script>
<?php exit;} } ?>
<?php if($n==44){//Edita Carga Documento Principal
     $Valoresdoc = "doc_tra_id|N,doc_ciu_id|N,doc_txd_id|N,doc_usudestinoid|N,doc_usudestino|S,doc_axe_id|N,doc_exc_id|N,
		            doc_entremitente|S,doc_remitente|S,doc_usu_id|N,doc_equipo|S,
		            doc_fecdoc|S,doc_asunto|S,doc_obsdocmento|S,doc_anexos|S,doc_txe_id|N"; 
	 $banupd = $Gen->SetDatos($Valoresdoc,"documento","doc_id=".$_POST['iddocu']);
	 if($banupd>0) $msg = "Registro Modificado Satisfactoriamente.";
	 $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Modifica Documento tramite".$_POST['tra_consecutivo']); 
?>
<form name="frrm" action="aplicacion.php" method="post" >
	<input type="hidden" name="n" value="4">
	<input type="hidden" name="id" value="<?=$_POST['doc_tra_id']?>">
	<input type="hidden" name="iddoc" value="<?=$_POST['iddocu']?>">
	<input type="hidden" name="msg" value="<?=$msg?>">
	</form>
	<script>document.frrm.submit();</script>
<?php exit; } ?>
<?php  
      if($n==45)
	  { //Carga archivos para el tramite
	     $directoriotramite = $path_documentos.$_POST['consecutivo'];
		 if(!is_dir($directoriotramite))//Si no existe, lo crea
		 {
	         $result = mkdir($directoriotramite, 0755);
		      //print_r($HTTP_POST_FILES);
              if ($result == 1) {
                  //echo $dirPath . " has been created".$_POST['consecutivo'];
			      $totalarchivos = count($HTTP_POST_FILES);	
                  for($i=1;$i<$totalarchivos;$i++)	
			      {   
			         $arch = "file_".$i;
					 $nombre = "nombre_".$i;
					 $comen = "comen_".$i;
				     $archivo = $_FILES[$arch]['name'];
					 //echo "<br>";
					 $tipo = $_FILES[$arch]['type'];
					 //echo "<br>";http://www.htmlquick.com/es/reference/mime-types.html
					 if($tipo!="application/octet-stream")
					 {
				        if (copy($_FILES[$arch]['tmp_name'],$directoriotramite."/".$archivo)) {
			               echo $status = "Archivo subido: <b>".$archivo."</b>";
						$Tra->guardarfiles($_POST['dxt_tra_id'],$_POST[$nombre],$archivo,$_POST[$comen],$_POST['dxt_equipo'],$_POST['dxt_usu_id']);
		              } else {
			                 echo $status = "Error al subir el archivo".$archivo;
		              }
					}
			     }			  
			 } 
         } else 
		 {
              //$dirPath . " No se creo el directorio.";
			  $totalarchivos = count($HTTP_POST_FILES);	
              for($i=1;$i<=$totalarchivos;$i++)	
			  {
			         $arch = "arch_".$i;
					 $nombre = "nom_".$i;
					 $comen = "comen_".$i;
					 $archivo = $_FILES[$arch]['name'];
					 $tipo = $_FILES[$arch]['type'];
					 if($tipo!="application/octet-stream")
					 {
					 if (copy($_FILES[$arch]['tmp_name'],$directoriotramite."/".$archivo)) {
			            echo $status = "Archivo subido: <b>".$archivo."</b>";
						$Tra->guardarfiles($_POST['dxt_tra_id'],$_POST[$nombre],$archivo,$_POST[$comen],$_POST['dxt_equipo'],$_POST['dxt_usu_id']);
		              } else {
			                 echo $status = "Error al subir el archivo";
		              }
				     }
              }
		$consec = $Gen->GetUnDato("tra_consecutivo","SELECT tra_consecutivo FROM tramite WHERE tra_id=".$_POST['id']);	  
     $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Carga Documentos tramite ".$consec); 			  
         } ?>
		 <form name="ffrm" action="aplicacion.php" method="post">
		 <input type="hidden" name="n" value="4">
		 <input type="hidden" name="id" value="<?=$_POST['dxt_tra_id']?>">
		 <input type="hidden" name="iddoc" value="<?=$_POST['iddoc']?>">
		 <input type="hidden" name="directorio" value="<?=$directoriotramite?>">
		 </form>
		 <script>document.ffrm.submit();</script>
	<?php exit;  } ?>
	<?php if($n==46){ 
	           $ValoresObs = "txo_reales|S,txo_observaciones|S,txo_ext_id|N,txo_tra_id|N,txo_ip|S,txo_usu_id|N";
			   $id_tabla = $Gen->SetValores($ValoresObs,$t_tramite_observaciones);
			   $Gen->SetDatos("tra_ext_id|N","tramite","tra_id=".$_POST['dxt_tra_id']); //actualiza estado si lo cambia
			   $consec = $Gen->GetUnDato("tra_consecutivo","SELECT tra_consecutivo FROM ".$t_tramite." WHERE tra_id=".$_POST['dxt_tra_id']);
			   $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Agregar observaciones tramite ".$consec); 			  
	?>
	<form name="fform" action="aplicacion.php" method="post">
		 <input type="hidden" name="n" value="4">
		 <input type="hidden" name="id" value="<?=$_POST['id']?>">
		 <input type="hidden" name="iddoc" value="<?=$_POST['iddoc']?>">
		 </form>
	<script>document.fform.submit();</script> 
	<?php exit;  } ?>
	<?php if($n==47)
	{  
	   $sqlt = "SELECT a.tra_id, b.doc_id FROM tramite a LEFT JOIN documento b ON a.tra_id=b.doc_tra_id WHERE tra_consecutivo='".$_POST['codigotra']."';";
	   //echo $sqlt; exit;
	   $dbt = new Database();
	   $dbt->query($sqlt);
	   $dbt->next_row();
	   $idtra = $dbt->tra_id;
	   $iddoc = $dbt->doc_id;
	   $dbt->close(); ?>  
	<form name="form" method="POST" action="aplicacion.php">
	<input type="hidden" name="n" value="4">
	<input type="hidden" name="id" value="<?=$idtra?>">
	<input type="hidden" name="iddoc" value="<?=$iddoc?>">
  	</form>
	<script>document.form.submit();</script>
<?php	exit;}
	?>
	<?php if($n==48){
	//Reasignación tramite
	 $_POST['txr_usuasig'] = $_POST['rxr_usuasig'];
	 $Campos = "txr_tra_id|N,txr_usuinicial|N,txr_usuasig|N,txr_observaciones|S,txr_usu_guarda|N,txr_ciales|S,txr_ip|S";
	 $id = $Gen->SetValores($Campos,"tramite_reasignacion");
	 $Tra->Observaciones($_POST['txr_tra_id'] ,$_POST['txr_observaciones'],$_POST['txr_ciales'],1,$_POST['txr_ip'],$_POST['txr_usu_guarda'],3);
	 $Tra->seguimiento($_POST['txr_tra_id'],$_POST['txr_usu_guarda'],3,$_POST['txr_usuasig'],$_POST['txr_ip']);
	 $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Reasignacion tramite ".$_SESSION['consecutivo']);
	?>
	<?php } ?>
<?php 
  if($n==51)
  { //Nuevos Usuarios
     $campos = "usu_nombre|S,usu_apel|S,usu_corto|S,usu_cedula|S,usu_car_id|N,usu_emailcor|S,usu_emailper|S,usu_fijo|S,";
     $campos .= "usu_celular|S,usu_dir|S,usu_obs|S,usu_act_id|S,usu_per_id|N,usu_car_lider|N";
     $Gen->SetValores($campos,"usuario");
     $Gen->AsignarDatos($_POST['usu_cedula'],$_POST['usu_emailcor'],$_POST['usu_emailper'],$mailadministrador);
     $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Ingresar Usuarios");
     ?>
     <form name="frmenv" action="aplicacion.php" method="POST">
     <input type="hidden" name="n" value="5">
     <input type="hidden" name="msg" value="Usuario ingresado con exito!">
     </form>
     <script>document.frmenv.submit();</script>
 <?php exit; }
?>
<?php
 if($n==52)
 { //Editar Usuarios
     $campos = "usu_nombre|S,usu_apel|S,usu_corto|S,usu_cedula|S,usu_car_id|N,usu_emailcor|S,usu_emailper|S,usu_fijo|S,";
     $campos .= "usu_celular|S,usu_dir|S,usu_obs|S,usu_act_id|S,usu_per_id|N";
     $Gen->SetDatos($campos,"usuario","usu_id=".$_POST['id']);
     $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Modificar Usuarios");
  ?>
     <form name="frmenv" action="aplicacion.php" method="POST">
     <input type="hidden" name="n" value="5">
     <input type="hidden" name="msg" value="Usuario modificado con exito!">
     </form>
     <script>document.frmenv.submit();</script>
 <?php exit; } ?>
 <?php
    if($n==53)
    {
     $Gen->borrarusuarios($_POST['id']);
	 $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Borrar Usuarios");
     ?>
     <form name="frmenv" action="aplicacion.php" method="POST">
     <input type="hidden" name="n" value="5">
     <input type="hidden" name="msg" value="Usuario Eliminado con exito!">
     </form>
     <script>document.frmenv.submit();</script>
 <?php exit; }
 ?>
<?php
   if($n==5)
   { 
      require_once("usuarios.php");
   }
?>

<?php
   if($n==6)
   { ?>
   <div id="barra">
<a href="#" class="tramites">ESTADISTICAS</a>
<a href="logout.php"></a>
<a href="aplicacion.php?n=1" class="volver"></a>
<br class="clear" />
</div>
<div id="centro">
  <?php    echo "NO TENGO NI IDEA COMO HACERLO...ESTOY EN PROCESO CREATIVO..."; ?>
  </div>
  <?php  }
?>
<!--AQUI TERMINA-->
<!--</div><!--TERMINA DIV CENTRO-->

<div class="btn_alianza"><a href="#"><img src="tabbed_pages/grupo_alianza.png" alt="" width="150" height="54" /></a></div>
<div class="btn"><a href="#"><!--<img src="tabbed_pages/masterrobots.png" alt="" width="80" height="28" />--></a></div>


</div>
</body>
</html>
