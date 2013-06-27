<? //include "../conf/clave.php";
class General
{
   function SetValores($Valores,$tabla)
   {
     $k=explode(",",$Valores);
		$aux="";
		$aux1="";
		for($i=0;$i<count($k);$i++){
		   $m=explode('|',$k[$i]);
		     //if($_POST[strtolower($m[0])]!="")
		     if($m[1]=='S' )
		       $aux.="'".$_POST[strtolower(trim($m[0]))]."',";
		       //echo $_POST[strtolower("Observaciones")]; exit;
		     if($m[1]=='ST' )
		       $aux.="'".strip_tags($_POST[strtolower(trim($m[0]))])."',";
			   $aux1.=$m[0].",";
			 if($m[1]=='N' )
		       $aux.="'".$_POST[strtolower(trim($m[0]))]."',";
		  } 
		  $aux=substr($aux,0,strlen($aux)-1);
		 $aux1=substr($aux1,0,strlen($aux1)-1);
		 //echo $aux;
		 $sql=  "INSERT INTO ".$tabla."(".$aux1.") VALUES(".strtoupper($aux).")";
	  echo $sql."<br>";
	 //die($sql)."<hr>";
	 //die($sql);
	 $db = new Database();
	 $db->query($sql);
	 $numafect = $db->query_last_id();
     return $numafect;  
   }
   function SetDatos($Valores,$Tabla,$Condicion){
        $k=explode(",",$Valores);
		$aux="";
		for($i=0;$i<count($k);$i++){
		   $m=explode('|',$k[$i]);
		     if($m[1]=='S' )
		       $aux.=trim($m[0])."='".$_POST[strtolower(trim($m[0]))]."',";
		     else
		       $aux.=trim($m[0])."='".$_POST[strtolower($m[0])]."',";
		  } 
		  //print_r($m);
		  $aux=substr($aux,0,strlen($aux)-1);
		 $sql=  "UPDATE ".$Tabla." SET ".$aux." WHERE ".$Condicion;
		//echo $sql."<hr>"; exit;
		$Cn=new Database();
		$Cn->query($sql);
		$Cn->close();
   }
   function GetUnDato($campo_mostrar,$sql)
  {
	  //echo $sql."<br>";
	  $dbnom = new Database();
	  $dbnom->query($sql);
	  $dbnom->next_row();
	  $campo = $dbnom->$campo_mostrar;
	  $dbnom->close();
	  return $campo;
   }
   function Getrows($sql)
  {
	  //die($sql);
	  $dbnom = new Database();
	  $dbnom->query($sql);
	  $rows = $dbnom->num_rows();
	  $dbnom->close();
	  return $rows;
   }
   function updatesql($sql)
   { //Tablas MyIsam
         //echo $sql;
	 $db = new Database();
	 $db->query($sql);
	 $filaafectadaupd = $db->affected_rows();
	  //echo $filaafectadaupd; exit;
	 $db->close();
	 return $filaafectadaupd;
  }  
  function delete_registro($campo_id,$valor_id,$tabla,$campo_estado)
  {
      $db = new Database();
	  $sql = "UPDATE ".$tabla." SET ".$campo_estado."=0 WHERE ".$campo_id."=".$valor_id.";";
	  //echo $sql; exit;
	  $db->query($sql);
	  return $db->affected_rows();
  }

   function enviomail($mailrecibe,$mailenvia,$mensaje,$asunto)
   {
      $cabecera = "MIME-Version: 1.0\r\n";
      $cabecera .= "Content-type: text/html; charset=iso-8859-1\r\n";
      $cabecera .= "From: ".$mailenvia."\n";
      $cabecera .= "X-Mailer: PHP/" . phpversion();
      //echo $mensaje;
      @mail($mailrecibe, $asunto, $mensaje, $cabecera);
   }
   function validarusuario($usuario,$clave,$t_usuario,$t_cargos,$t_perfiles)
   {
      $db = new Database();
      $sql = "SELECT a.usu_id,a.usu_corto,a.usu_per_id,a.usu_emailcor,a.usu_emailper,a.usu_exc_id FROM $t_usuario a
	          INNER JOIN $t_perfiles d ON a.usu_per_id = d.per_id
		  LEFT JOIN empresa_cliente e ON a.usu_exc_id = e.exc_id AND exc_estado=1
              WHERE a.usu_user='".$usuario."' AND a.usu_password='".$clave."' AND a.usu_estado=1";
     //echo $sql; exit;
      $db->query($sql);
      $db->next_row();
      $numrows = $db->num_rows();
      $cadenavalidacion = "";
      if($numrows>0)
      {
 
	 $cadenavalidacion .= $db->usu_id."|";
	 $cadenavalidacion .= $db->usu_corto."|";
	 $cadenavalidacion .= $db->usu_per_id."|";
	 $cadenavalidacion .= $db->usu_emailcor."|";
	 $cadenavalidacion .= $db->usu_emailper."|";
	 $cadenavalidacion .= "SI|";
	 $cadenavalidacion .= $db->usu_exc_id;
	 $db->close();
      }
      else
      {
          $cadenavalidacion .= "NO";
      }
      
      return $cadenavalidacion;
  }
    function ComboBox($PSql,$Valor,$Opcion,$Nombre,$Valor1=0,$Ja=""){
/******************************************************************************
 ** NOMBRE:			ComboBox
 ** DESCRIPCION:	Llena un campo select desde una consulta a una(s) tabla(s)
 ** PARAMETROS:
** 				$PSql			La consulta SQL que trae los datos
**					$Valor			La columna que va en el value del select
**					$Opcion			Lo que se va a mostrar al usuario
**					$Nombre			Nombre del select
**					$Valor1			La opcion seleccionada
 *******************************************************************************/ 
 $Cn = new Database();
 $Cn->query($PSql);
 $aux='<SELECT NAME="'.$Nombre.'" ID="'.$Nombre.'" '.$Ja.' >';
 $aux.='<OPTION VALUE="0" select="selected">SELECCIONE</OPTION>';
 while($Cn->next_row()){
    $aux.='<OPTION VALUE="'.$Cn->$Valor.'"';
	if($Valor1>0 || $Valor1!="")
	    if($Valor1==$Cn->$Valor)
		   $aux.=' selected="selected" ';
	$aux.=' >'.$this->limpiarCaracteresEspeciales(strtoupper($Cn->$Opcion)).'</OPTION>'.chr(10);
	}
 $aux.='</SELECT>'.chr(10);
 if($Valor1==0){
 $aux.='<script>'.chr(10);
 $aux.='var R_'.$Nombre.'=document.getElementById("'.$Nombre.'");'.chr(10);
 $aux.='R_'.$Nombre.'.options[0].focus();'.chr(10);
 $aux.='</script>'.chr(10);
 }
 return $aux;
}
    function ComboBoxreq($PSql,$Valor,$Opcion,$Nombre,$Valor1=0,$Ja=""){
/******************************************************************************
 ** NOMBRE:			ComboBox
 ** DESCRIPCION:	Llena un campo select desde una consulta a una(s) tabla(s)
 ** PARAMETROS:
** 				$PSql			La consulta SQL que trae los datos
**					$Valor			La columna que va en el value del select
**					$Opcion			Lo que se va a mostrar al usuario
**					$Nombre			Nombre del select
**					$Valor1			La opcion seleccionada
 *******************************************************************************/ 
 $Cn = new Database();
 $Cn->query($PSql);
 $aux='<SELECT NAME="'.$Nombre.'" ID="'.$Nombre.'" '.$Ja.'required>';
 $aux.='<OPTION VALUE="0" select="selected">SELECCIONE</OPTION>';
 while($Cn->next_row()){
    $aux.='<OPTION VALUE="'.$Cn->$Valor.'"';
	if($Valor1>0 || $Valor1!="")
	    if($Valor1==$Cn->$Valor)
		   $aux.=' selected="selected" ';
	$aux.=' >'.$this->limpiarCaracteresEspeciales(strtoupper($Cn->$Opcion)).'</OPTION>'.chr(10);
	}
 $aux.='</SELECT>'.chr(10);
 if($Valor1==0){
 $aux.='<script>'.chr(10);
 $aux.='var R_'.$Nombre.'=document.getElementById("'.$Nombre.'");'.chr(10);
 $aux.='R_'.$Nombre.'.options[0].focus();'.chr(10);
 $aux.='</script>'.chr(10);
 }
 return $aux;
}

function form_mail($sPara, $sAsunto, $sTexto, $sDe)
{
	$bHayFicheros = 0;
	$sCabeceraTexto = "";
	$sAdjuntos = "";

	if ($sDe)$sCabeceras = "From:".$sDe."\n";
	else $sCabeceras = "";
	$sCabeceras .= "MIME-version: 1.0\n";
	foreach ($_POST as $sNombre => $sValor)
	$sTexto = $sTexto."\n".$sNombre." = ".$sValor;

	foreach ($_FILES as $vAdjunto)
	{
		if ($bHayFicheros == 0)
		{
		$bHayFicheros = 1;
		$sCabeceras .= "Content-type: multipart/mixed;";
		$sCabeceras .= "boundary=\"--_Separador-de-mensajes_--\"\n";

		$sCabeceraTexto = "----_Separador-de-mensajes_--\n";
		$sCabeceraTexto .= "Content-type: text/plain;charset=iso-8859-1\n";
		$sCabeceraTexto .= "Content-transfer-encoding: 7BIT\n";

		$sTexto = $sCabeceraTexto.$sTexto;
		}
		if ($vAdjunto["size"] > 0)
		{
		$sAdjuntos .= "\n\n----_Separador-de-mensajes_--\n";
		$sAdjuntos .= "Content-type: ".$vAdjunto["type"].";name=\"".$vAdjunto["name"]."\"\n";;
		$sAdjuntos .= "Content-Transfer-Encoding: BASE64\n";
		$sAdjuntos .= "Content-disposition: attachment;filename=\"".$vAdjunto["name"]."\"\n\n";

		$oFichero = fopen($vAdjunto["tmp_name"], 'r');
		$sContenido = fread($oFichero, filesize($vAdjunto["tmp_name"]));
		$sAdjuntos .= chunk_split(base64_encode($sContenido));
		fclose($oFichero);
		}
	}

	if ($bHayFicheros)
	$sTexto .= $sAdjuntos."\n\n----_Separador-de-mensajes_----\n";
	return(mail($sPara, $sAsunto, $sTexto, $sCabeceras));
}
function GenerarPassword($longitud)
{
	$str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
	$cad = "";
	for($i=0;$i<$longitud;$i++) {
	   $cad .= substr($str,rand(0,62),1);
	}
	return $cad;
}
function limpiarCaracteresEspeciales($str){
     if (!isset($GLOBALS["carateres_latinos"])){
      $todas = get_html_translation_table(HTML_ENTITIES, ENT_NOQUOTES);
      $etiquetas = get_html_translation_table(HTML_SPECIALCHARS, ENT_NOQUOTES);
      $GLOBALS["carateres_latinos"] = array_diff($todas, $etiquetas);
   }
   $str = strtr($str, $GLOBALS["carateres_latinos"]);
   return $str;
}
function parametros($nombre)
{
   $dbp = new Database();
   $sqlp = "SELECT par_texto FROM parametros WHERE par_nombre='".$nombre."'";
   $dbp->query($sqlp);
   $dbp->next_row();
   $texto = $dbp->par_texto;
   $dbp->close();
   return $texto;
}
function contartexto($texto)
{
   return strlen($texto);
}
    function edad($edad){
	list($anio,$mes,$dia) = explode("-",$edad);
	$anio_dif = date("Y") - $anio;
	$mes_dif = date("m") - $mes;
	$dia_dif = date("d") - $dia;
	if ($dia_dif < 0 && $mes_dif < 0)
	$anio_dif--;
	return $anio_dif;
    }
    //echo "edad es".edad("1983-04-18");
    function cambiopassword($id)
    { 
         $nueva = $this->GenerarPassword(5);
	 $db = new Database();
	 $sql = "UPDATE usuario SET usu_password=MD5('".$nueva."') WHERE usu_id=".$id.";";
	 $db->query($sql);
	 return $nueva;
    }
	//$Gen->Sincronice2Combos(depto_id,doc_ciu_id,"ciudad",0,"ciu_dep_nombre","ciu_id","ciu_nombre");
   function Sincronice2Combos($Combo1,$Combo2,$PSql,$Ja="",$p1=0,$p2=0,$p3,$borra=""){
 $Cn=new Database();
 //die("select count(*) from ".$PSql);
 $Cn->query("select count(*) max from ".$PSql);
 $Cn->next_row();
 $hay=$Cn->max;

    $Cn->query("select * from ".$PSql);
	echo chr(10).'    <script>';    
	echo chr(10).'    var sa=document.getElementById("'.$Combo1.'")';
	echo chr(10).'    var '.$Combo2.'centro = new Array('.$hay.');'.chr(10);$i=0;
	if($borra!=""){
    echo chr(10).'  function '.$borra.'_borra(){';
	echo chr(10).'    var sb=document.getElementById("'.$borra.'");';
	echo chr(10).'    sb.selectedIndex=0;';
	echo chr(10).'    if(sb.length>=0)  {';
	echo chr(10).'      for(i=sb.length; i>=0; i--) ';
	echo chr(10).'      sb.remove(i);';
	echo chr(10).'      }';
	echo chr(10).'    }';
	echo chr(10).'    '.$borra.'_borra();';
	}
	while($Cn->next_row()){
	     echo '    '.$Combo2.'centro['.$i++.']="'.$Cn->$p1.'|'.$Cn->$p2.'|'.trim(strtoupper($Cn->$p3)).'";'.chr(10);
	}
    echo chr(10).'  function '.$Combo2.'borra(){';
	echo chr(10).'    var sb=document.getElementById("'.$Combo2.'");';
	echo chr(10).'    sb.selectedIndex=0;';
	echo chr(10).'    if(sb.length>=0)  {';
	echo chr(10).'      for(i=sb.length; i>=0; i--) ';
	echo chr(10).'      sb.remove(i);';
	echo chr(10).'      }';
	echo chr(10).'    }';
    echo chr(10).'  function '.$Combo2.'cambia(que){';
    echo chr(10).'    var x=document.getElementById("'.$Combo1.'");';	
	echo chr(10).'    var sb=document.getElementById("'.$Combo2.'");';
	echo chr(10).'    sb.selectedIndex=0;';
	echo chr(10).'    '.$Combo2.'borra();';
	echo chr(10).'        j=0;';
	echo chr(10).'        sb.options[j]=new Option("SELECCIONE",0,j++);';
    echo chr(10).'        for(i=0;i<'.$Combo2.'centro.length;i++){';
	echo chr(10).'            que1='.$Combo2.'centro[i].split("|");';
	echo chr(10).'            nada=que1[0];';
	echo chr(10).'            if(nada==que.value)';
	echo chr(10).'               sb.options[j]=new Option(que1[2],que1[1],j++);';
	echo chr(10).'         }';
    echo chr(10).'     sb.options[0].focus;';
	echo chr(10).' }';
	echo chr(10).'</script>';
 }
 function nombreequipo()
 {
     //$hostname = explode(".", gethostbyaddr($_SERVER['REMOTE_ADDR']));
     //return $hostname[0]; 
     //ip equipo intranet	
     if($_SERVER["HTTP_X_FORWARDED_FOR"]){
     //Si hay proxy	 
     $proxy = $_SERVER["REMOTE_ADDR"];	 
	 $ipequipo = $_SERVER["HTTP_X_FORWARDED_FOR"];
	 
	}
	else
	{ //No hay proxy
	   $ipequipo = $_SERVER["REMOTE_ADDR"];
	}
	return $ipequipo;
 }
 function uname()
 {
    /*
	a: Elegida por defecto. Contiene todos los modos en la secuencia s n r v m.
    s: Nombre del sistema operativo. ej. FreeBSD.
    n: Nombre del Host. ej. localhost.example.com.
    r: Nombre de la versión liberada. ej. 5.1.2-RELEASE.
    v: Información de la versión. Varia mucho entre los sistemas operativos.
    m: Tipo de máquina. ej. i386.*/
    $nombre = PHP_uname('n');
	return $nombre;
 }
 function obtenerip()
 {
    if( $_SERVER['HTTP_X_FORWARDED_FOR'] != '' )
   {
      $client_ip = 
         ( !empty($_SERVER['REMOTE_ADDR']) ) ? 
            $_SERVER['REMOTE_ADDR'] 
            : 
            ( ( !empty($_ENV['REMOTE_ADDR']) ) ? 
               $_ENV['REMOTE_ADDR'] 
               : 
               "unknown" );
 
      // los proxys van añadiendo al final de esta cabecera
      // las direcciones ip que van "ocultando". Para localizar la ip real
      // del usuario se comienza a mirar por el principio hasta encontrar 
      // una dirección ip que no sea del rango privado. En caso de no 
      // encontrarse ninguna se toma como valor el REMOTE_ADDR
 
      $entries = preg_split('/[, ]/', $_SERVER['HTTP_X_FORWARDED_FOR']);
 
      reset($entries);
      while (list(, $entry) = each($entries)) 
      {
         $entry = trim($entry);
         if ( preg_match("/^([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)/", $entry, $ip_list) )
         {
            // http://www.faqs.org/rfcs/rfc1918.html
            $private_ip = array(
                  '/^0\./', 
                  '/^127\.0\.0\.1/', 
                  '/^192\.168\..*/', 
                  '/^172\.((1[6-9])|(2[0-9])|(3[0-1]))\..*/', 
                  '/^10\..*/');
 
            $found_ip = preg_replace($private_ip, $client_ip, $ip_list[1]);
 
            if ($client_ip != $found_ip)
            {
               $client_ip = $found_ip;
               break;
            }
         }
      }
   }
   else
   {
      $client_ip = 
         ( !empty($_SERVER['REMOTE_ADDR']) ) ? 
            $_SERVER['REMOTE_ADDR'] 
            : 
            ( ( !empty($_ENV['REMOTE_ADDR']) ) ? 
               $_ENV['REMOTE_ADDR'] 
               : 
               "unknown" );
   }
 
   return $client_ip; 
	 }
	 function Ingresa($Tipo=0)
	 {
		date_default_timezone_set('America/Bogota');
		$f=fopen("logs/Ingresa".date('Ymd').".log","a");
		fputs($f,date('Y-m-d H:i:s e')."|".$_SERVER["REMOTE_ADDR"]."|".$_SESSION["usu_id"]."|".$_SESSION["usu_nombre"]."|".$Tipo.chr(10));
		fclose($f);	//exit;
   }
   function bloqueausuario($id,$equipo)
   {
      $b = new Database();
	  $sql = "SELECT uxl_id FROM usu_log WHERE uxl_usu_id=".$id." AND uxl_activo=1;";
	  $b->query($sql);
	  $filas = $b->num_rows();
	  if($filas==0)
	  {
	     $campos = "uxl_usu_id,uxl_activo,uxl_equipo";
		 $valores = $id.",1,'".$equipo."'";
	     $sqlinsert = "INSERT INTO usu_log($campos) VALUES($valores);";
		 $a = new Database();
		 $a->query($sqlinsert);
		 $var = 1;
	  }
	  else
	  {
	     $var = 0;
	  }
   }
   function id_empresa($id)
   {
      $sql = "SELECT d.emp_ip
			  FROM `usuario` a
			  JOIN cargos b ON a.usu_car_id = b.car_id
			  AND usu_id =".$id."
			  JOIN dep_empresa c ON b.car_dxe_id = c.dxe_id
			  JOIN empresa d ON c.dxe_emp_id = d.emp_ip;";
	 $db = new Database();
	 $db->query($sql);
	 $db->next_row();
	 return $db->emp_ip;
	 $db->close();
   }
   function maximo()
   {
        $sql = " SELECT MAX(tra_consecutivo) maximo FROM tramite;";
		$db = new Database();
		$db->query($sql);
		$db->next_row();
		if($db->maximo=="")
		  $maximo = 201200400;
		else
		{
		     $valor_cadena = (string)$db->maximo; 
			 $inicial = substr($valor_cadena, 0,6);
			 $arr = substr($valor_cadena, 6,strlen($valor_cadena-1));
			 $arr = (int)$arr + 1;
			 $maximo = $inicial."".$arr;
		}
		$db->close();
		return (int)$maximo;
   }
   function idtramite($consecutivo)
   {
      $sql = "SELECT tra_id FROM tramite WHERE tra_consecutivo=".$consecutivo.";";
	  //echo $sql; exit;
	  $db = new Database();
	  $db->query($sql);
	  $db->next_row();
	  $idtra = $db->tra_id;
	  $db->close();
	  return $idtra;
   }
   function inftramitemail($consecutivo)
   {
   
     $sql = "SELECT a.tra_id,
	                a.tra_consecutivo, 
	                a.tra_nombre,
					a.tra_fechahora,
					a.tra_prioridad, 
					a.tra_equipo, 
					a.tra_observaciones,
					a.tra_ext_id,
					b.txt_nombre,
					c.ext_nombre,
                    d.cxt_nombre,					
	                e.txo_nombre,
					f.usu_nombre
			 FROM `tramite` a
			 JOIN tramite_tipo b ON a.tra_txt_id = b.txt_id
			 JOIN tramite_estado c ON a.tra_ext_id = c.ext_id
			 JOIN tramite_categoria d ON a.tra_cxt_id = d.cxt_id
			 JOIN tramite_tipo_origen e ON a.tra_txo_id = e.txo_id
			 JOIN usuario f ON a.tra_usu_id = f.usu_id
			 WHERE a.tra_consecutivo=".$consecutivo.";";
	 //echo $sql;
	 $db = new Database();
	 $db->query($sql);
	 $db->next_row();
	 $mensaje = '
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>CONSECUTIVO</strong>:'.$db->tra_consecutivo.'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>TIPO TRAMITE</strong>:'.strtoupper($db->txt_nombre).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>NOMBRE TRAMITE</strong>:'.strtoupper($db->tra_nombre).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>ESTADO TRAMITE</strong>:'.strtoupper($db->ext_nombre).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>CATEGORIA TRAMITE</strong>:'.strtoupper($db->cxt_nombre).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>TIPO ORIGEN TRAMITE</strong>:'.strtoupper($db->txo_nombre).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>PRIORIDAD</strong>:'.$db->tra_prioridad.'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>OBSERVACIONES TRAMITE</strong>:'.strtoupper($db->tra_observaciones).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>FECHA HORA</strong>:'.$db->tra_fechahora.'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>USUARIO</strong>:'.strtoupper($db->usu_nombre).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>EQUIPO USUARIO</strong>:'.$db->tra_equipo.'</div>';
if($db->tra_ext_id==7)
{
    $sqll = "SELECT txr_fechahora,txr_usuinicial,txt_usuasig,txt_observaciones 
	         FROM tramite_reasignacion WHERE txr_tra_id=".$db->tra_id.";";
	$db1 = new Database();
	$db1->query($sqll);
	$db1->next_row();
	$sql = "SELECT usu_nombre FROM usuario WHERE usu_id=".$db1->txr_usuinicial.";";
	$sqlr = "SELECT usu_nombre FROM usuario WHERE usu_id=".$db1->txt_usuasig.";";
	$usuinicial = $this->GetUnDato("usu_nombre",$sql);
	$usuasig = $this->GetUnDato("usu_nombre",$sqlr);
	$mensaje .='
	<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>*****ASIGNACION*****</strong></div>
	<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>FECHA HORA</strong>:'.$db1->txr_fechahora.'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>USUARIO ASIGNA</strong>:'.strtoupper($usuinicial).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>USUARIO ASIGNADO</strong>:'.strtoupper($usuasig).'</div>
<div style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify"><strong>OBSERVACIONES</strong>:'.strtoupper($db1->txt_observaciones).'</div>';
	
}

return $mensaje;
	} 
	
	function campoid($tabla)
	{
	   $sql = "SELECT `axt_nombre_campo`
			FROM `admin_tablas`
			WHERE `axt_campo_es_id` =1
			AND `axt_nombre_tabla` = '".$tabla."'";
	  $db = new Database();
	  $db->query($sql);
	  $db->next_row();
	  $campo = $db->axt_nombre_campo;
	  $db->close();
	  return $campo;
	}
	function campover($campo,$tabla,$id,$campoid)
	{
	   $sql = "SELECT ".$campo." FROM ".$tabla." WHERE ".$campoid."=".$id.";";
	  
	  $db = new Database();
	  $db->query($sql);
	  $db->next_row();
	  $campo = $db->axt_nombre_campo;
	  $db->close();
	  return $campo;
	}
	function padre($tabla)
	{
	   $sql ="SELECT axm_nombre_tabla FROM admin_menu WHERE axm_submenu = '".$tabla."';";
	   $db = new Database();
	   $db->query($sql);
	   $db->next_row();
	   $padre = $db->axm_nombre_tabla;
	   $db->close();
	   return $padre;
	}
	function submenu($tabla)
	{
	    $sql = "SELECT axm_submenu, axm_camposub FROM admin_menu WHERE axm_nombre_tabla = '".$tabla."'";
	    $db = new Database();
	    $db->query($sql);
	   $db->next_row();
	   $arr[0] = $db->axm_submenu;
	   $arr[1] = $db->axm_camposub;
	   $db->close();
           return $arr;	   
	}
	function log($accion,$usuario,$equipo)
	{
	   $db = new Database();
	   $sql = "INSERT INTO usu_log(uxl_accion,uxl_usu_id,uxl_equipo,uxl_activo) VALUES(".$accion."´',".$usuario.",'".$equipo."',1);";
	   $db->query($sql);
	   $db->close();
	}
	function logueado($usuario,$equipo,$accion)
	{
	   $db = new Database();
	   $sql = "INSERT INTO usu_log(uxl_activo,uxl_accion,uxl_usu_id,uxl_equipo) VALUES(1,'".$accion."',".$usuario.",'".$equipo."');"; 
	   $db->query($sql);
	   $idafect = $db->query_last_id();
       return $idafect;  
	}
	function AsignarDatos($cedula,$mailcor,$mailper,$mailadministrador)
	{
	   $db = new Database();
	   $Select = "SELECT usu_nombre,usu_apel FROM usuario WHERE usu_cedula='".$cedula."';"; 
	   $db->query($Select);
	   $db->next_row();
	   $arrnom = explode(" ",$db->usu_nombre);
	   $arrapel = explode(" ",$db->usu_apel);
	   $nom = substr($arrnom[0], 0, 2);
	   $apel = $arrapel[0];
	   $nombreuser = strtolower($nom."_".$apel); 
	   $password = $this->GenerarPassword(5);
	   $ban = $this->Getrows("SELECT usu_id FROM usuario WHERE usu_user='".$nombreuser."';"); 
	   if($ban>0)
	   {
	         $nom = $nom."".rand(1,100);
		 $nombreuser = strtolower(trim($nom."_".$apel)); 
		 $banfr = $this->Getrows("SELECT usu_id FROM usuario WHERE usu_user='".$nombreuser."';"); //exit;
		 if($banfr==0)
		    $this->updatesql("UPDATE usuario SET usu_user='".$nombreuser."',usu_password=MD5('".$password."') WHERE usu_cedula='".$cedula."';");
		 else
		 {
		   $this->AsignarDatos($cedula);
		 }
           }	   
	   else
	      $this->updatesql("UPDATE usuario SET usu_user='".$nombreuser."',usu_password=MD5('".$password."') WHERE usu_cedula='".$cedula."';");
	   $mensaje = "<div><img scr='".$path_imagenes_http."/logo_centro2.png'></div>
	               <div>Bienvenido al Sistema Central de Tramites y Soluciones. Sus datos de ingreso son:</div>
		       <div>Nombre Usuario: ".$nombreuser."</div> SCTS
		       <div>Clave Secreta: ".$password."</div>";
           //echo $mensaje; exit;
           $asunto = "Claves Sistema Central de Tramites y Soluciones SCTS";
	   $this->enviomail($mailcor,$mailadministrador,$mensaje,$asunto);
	   $this->enviomail($mailper,$mailadministrador,$mensaje,$asunto);
	   return $ban;
	}
        function borrarusuarios($id)
	{
	     
	    $db = new Database();
	    $sql = "UPDATE usuario SET usu_estado=0,usu_act_id=0 WHERE usu_id=".$id.";";
	    $db->query($sql);
	}
	function estaactivo($id,$fecha)
	{
	   $dbea = new Database();
	   $sql = "SELECT uxl_id FROM usu_log WHERE uxl_usu_id=$id AND uxl_fechahora LIKE '%$fecha%' AND uxl_activo=1;";
	   $dbea->query($sql);
	   $num = $dbea->num_rows();
	   $dbea->close();
	   return 0;
	}
}//End class

?>