<?php
    require_once("conf/clave.php");
    if($_POST['n']==1)
    {
     $valida = $Gen->validarusuario(strtolower($_POST['usuariotramite']),$_POST['passi'],$t_usuario,$t_cargos,$t_perfil);
	 $arr_valida = explode("|",$valida);
     if($arr_valida[0]=="NO")
	{
	   $n = "NO";
	   $action = "index.php";
	}
	else
	{	 
		 session_start();
		 $_SESSION['usu_id'] = $arr_valida[0];
		 $_SESSION['usu_per_id'] = $arr_valida[2];
		 $_SESSION['usu_emailcor'] = $arr_valida[3];
		 $_SESSION['usu_emailper'] = $arr_valida[4];
		 $_SESSION['autentificado'] = $arr_valida[5];
		 $_SESSION['exc_id'] = $arr_valida[6];
		 $empresaclien = $Gen->GetUnDato("exc_nombre","SELECT exc_nombre FROM empresa_cliente WHERE exc_id=".$_SESSION['exc_id']." AND exc_estado=1;");
		 if($empresaclien!='')
		     $nombreusu = $empresaclien." - ".$arr_valida[1];
		 else
		     $nombreusu = $arr_valida[1];
		 $_SESSION['usu_nombre'] = $nombreusu;
		 $_SESSION['equipo'] = $Gen->nombreequipo();
		 $_SESSION['ip'] = $Gen->obtenerip();
		 $_SESSION["ultimoAcceso"]= date("Y-n-j H:i:s");
		 $activo = $Gen->estaactivo($_SESSION['usu_id'],$fecha_plano);
		 $Gen->Ingresa();//Para llevar un log por fechas en archivos de texto
		 if($activo==1)
		 {
		        
			$action = "index.php";
			$n = 99;
		 }
		 else
		 {
			 $n = 1;
			 $action = "aplicacion.php";
			 $idlogo = $Gen->logueado($_SESSION['usu_id'],$_SESSION['equipo'],"Ingreso al SCTS");
			 if($idlogo>0)
			    $grabo = "grabo";
			 else
			 {
			    echo "NO grabo";
			    exit;
			 }
		 }
	}
	 
    }
	
?>
<form name="frm" action="<?=$action?>" method="POST">
<input type="hidden" name="n" value="<?=$n?>">
</form>
<script>document.frm.submit();</script>
<?php exit; ?>
