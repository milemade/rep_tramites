<?
    require_once("conf/clave.php");
    $sql = "SELECT usu_id FROM usuario WHERE usu_emailcor='".$_POST['email']."' OR usu_emailper='".$_POST['email']."';";
    $id = $Gen->GetUnDato("usu_id",$sql);
    if($id>0)
    {
         $pass = $Gen->cambiopassword($id);
	     $mailrecibe = $_POST['email'];
	     $mailenvia = $mailadministrador;
	     $asunto = "SOLICITUD CAMBIO PASSWORD";
	     $mensaje = "<div>SOLICITUD NUEVO PASSWORD</div>
	                 <div>E.mail registrado:".$_POST['email']."</div>
		             <div>Nuevo Password: ".$pass."</div>";
         //echo $mensaje;
	     $Gen->enviomail($mailrecibe,$mailenvia,$mensaje,$asunto);
		 $mensaje = "Gracias por utilizar nuestros servicios,
		             Por favor revise su e.mail para ver su nuevo password.<br>
					 Ingrese al sistema con su nuevo password.";
    }
?>
<script>alert('Revise su e.mail para recibir su nuevo password.')</script>
<form name="frm" method="post" action="index.php">
<input type="hidden" name="usermail" value="<?=$_POST['email']?>">
<input type="hidden" name="mensaje" value="<?=$mensaje?>">
</form>
<script>document.frm.submit();</script>
<? exit; ?>