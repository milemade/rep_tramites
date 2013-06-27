<?php
 class tramites extends General
  {
     function usuarios_mostrar($id)
     {
         $db = new Database();
         $sql = "SELECT a.usu_act_id,a.usu_car_id,a.usu_per_id,a.usu_nombre,a.usu_apel,a.usu_corto,a.usu_cedula,
	                a.usu_user,a.usu_emailper,a.usu_emailcor,
		        a.usu_dir,a.usu_fijo,a.usu_celular,a.usu_obs,b.car_nombre,c.dxe_nombre,d.sede_id,usu_car_lider 
		        FROM usuario a
		        JOIN cargos b ON b.car_id=a.usu_car_id
		        JOIN dep_empresa c ON b.car_dxe_id=c.dxe_id
		        JOIN empresa_sedes d ON c.dxe_sede_id = d.sede_id
		        WHERE a.usu_id=".$id.";";
	 //echo $sql; exit;
	 $db->query($sql);
	 $db->next_row();
	 $arred[0] = $db->usu_act_id;
	 $arred[1] = $db->usu_car_id;
	 $arred[2] = $db->usu_per_id;
	 $arred[3] = $db->usu_nombre;
	 $arred[4] = $db->usu_apel;
	 $arred[5] = $db->usu_corto;
	 $arred[6] = $db->usu_cedula;
	 $arred[7] = $db->usu_user;
	 $arred[8] = $db->usu_emailper;
	 $arred[9] = $db->usu_emailcor;
	 $arred[10] = $db->usu_dir;
	 $arred[11] = $db->usu_fijo;
	 $arred[12] = $db->usu_celular;
	 $arred[13] = $db->usu_obs;
	 $arred[14] = $db->car_nombre;
	 $arred[15] = $db->dxe_nombre;
	 $arred[16] = $db->sede_id;
	 $arred[17] = $db->usu_car_lider;
	 $db->close();
	 return $arred;
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
        function consecutivo($iddepto)
	{ 
	   $Gen = new General();
       $sql = "SELECT axe_siglas FROM alianza_dep WHERE axe_id=".$iddepto.";"; 
	   $siglas = $Gen->GetUnDato("axe_siglas",$sql);
	   //echo $siglas; exit;
	   $sqll = "SELECT MAX(tra_consecutivo) tra_consecutivo FROM tramite WHERE tra_consecutivo IS NOT NULL AND tra_consecutivo LIKE '".$siglas."%'"; 
           $consec = $Gen->GetUnDato("tra_consecutivo",$sqll);	
	   if($consec=="")
	   {
	           $numero = 24000;
		   $anio = Date('Y');
		   $new = $siglas."".$anio."".$numero;
	   }
	   else
	   {
		   $numero = substr($consec, strlen($siglas), strlen($consec)-1);
		   $numero = (int)$numero + 1;
		   $new = $siglas."".$anio."".$numero;
		   
	   }
           return $new;	   
	}     
     function GetDatosTramite($codigo)
	{
	    $db = new Database();
		$sql = "SELECT a.tra_txt_id, a.tra_ext_id, a.tra_cxt_id, a.tra_txo_id, a.tra_ciu_id, 
                       a.tra_axe_id, a.tra_car_id, a.tra_fechahora, a.tra_nombre, a.tra_prioridad, a.tra_consecutivo, 
					   a.tra_observaciones, b.axe_id,b.axe_nombre,c.axs_id, c.axs_nombre, d.exa_id, d.exa_nombre,f.dep_id,f.dep_nombre, 
					   h.usu_id,h.usu_corto,h.car_dxe_id,h.dxe_nombre,h.sede_id,h.sede_nombre
			      FROM tramite a
			      JOIN alianza_dep b ON a.tra_axe_id = b.axe_id
			      JOIN alianza_sedes c ON b.axe_axs_id = c.axs_id
				  JOIN alianza_emp d ON c.axs_exa_id = d.exa_id
				  JOIN ciudad e ON a.tra_ciu_id = e.ciu_id
				  JOIN departamento f ON e.ciu_dep_id = f.dep_id
				  JOIN tramite_seguimiento g ON a.tra_id=g.txs_tra_id
				  JOIN v_usuario h ON g.txs_asig_id = h.usu_id
				 WHERE a.tra_id=".$codigo.";";
		//echo $sql;
		$db->query($sql);
		$db->next_row();
		$arr[0] = $db->tra_consecutivo;
		$arr[1] = $db->dep_id;
		$arr[2] = $db->tra_ciu_id;
		$arr[3] = $db->exa_id;
		$arr[4] = $db->axs_id;
		$arr[5] = $db->axs_nombre;
		$arr[6] = $db->axe_id;
		$arr[7] = $db->axe_nombre;
		$arr[8] = $db->tra_txt_id;
		$arr[9] = $db->tra_nombre;
		$arr[10] = $db->tra_cxt_id;
		$arr[11] = $db->tra_txo_id;
		$arr[12] = $db->tra_prioridad;
		$arr[13] = $db->tra_observaciones;
		$arr[14] = $db->car_dxe_id;
		$arr[15] = $db->dxe_nombre;
		$arr[16] = $db->sede_id;
		$arr[17] = $db->sede_nombre;
		$arr[19] = $db->usu_corto;
		$arr[20] = $db->usu_id;
		return $arr;
	}
	function tiempounidad($txt_id)
	{
	    $db = new Database();
	    $sql = "SELECT txt_tmaximo,txt_uxt_id FROM tramite_tipo WHERE txt_id=".$txt_id.";"; 
	    $db->query($sql);
	    $db->next_row();
	    $arrt[0] = $db->txt_tmaximo;
            $arrt[1] = $db->txt_uxt_id;
	    $db->close();
	    return $arrt;
	}
	function verificartiempo($txt_id,$tiempopaso)
	{
	    $arrt = $this->tiempounidad($txt_id);
            $db1 = new Database();
	    $sql1 = "SELECT pxt_uxt_id, SUM( pxt_tmpolimite ) suma
                     FROM tramite_pasos
                     WHERE pxt_txt_id =".$txt_id." AND pxt_uxt_id=".$unidaddetiempopaso."
                     GROUP BY pxt_txt_id;";
	   $db1->query($sql1);
	   $db1->next_row();
	   $total = $db1->suma;
	   $db1->close();
	   $resta = (int)$arrt[0] - (int)$total;
	   //echo $resta; exit;
	   if($resta>=0)
	       $alerta = "nnjnjn";
	   if($resta<0)
	      $alerta = "Verifique, Tiempo Excedido";
		
           return $alerta;  	    
	}
	function listartiempos($idtramite,$tiempomaximo=0,$unidadtiempo=0)
	{
	   $db = new Database();
	   $sql = "SELECT a.pxt_tmpolimite,a.pxt_uxt_id,b.uxt_nombre FROM tramite_pasos a
	           JOIN unidad_tiempo b ON a.pxt_uxt_id = b.uxt_id
		   WHERE a.pxt_estado=1 AND pxt_txt_id=".$idtramite.";";
           //echo $sql; exit;
	   $db->query($sql);
	   $lista = "<table align='center'><tr><td>&nbsp;</td><td>Cantidad</td><td>Tiempo</td></tr>";
	   $total = 0;
	   while($db->next_row())
	   {
	        $tiempo = $db->pxt_tmpolimite; 
                $total = (int)$total + (int)$tiempo;		
                $uxt = $db->uxt_nombre;	
		$lista .= "<tr><td>&nbsp;</td><td align='center'>".$tiempo."</td><td align='center'>".$uxt."</td></tr>";
	   }
	   $lista .= "<tr><td>TOTAL&nbsp;&nbsp;</td><td align='center'>$tiempomaximo</td><td align='center'>$unidadtiempo</td></tr>";
	   $lista .= "</table>";
	   //$db->close();
	   return $lista;
	}
	function listartiempossub($idtramite)
	{
	    $db = new Database();
	    $sql = "SELECT a.txt_tmaximo,b.uxt_nombre FROM tramite_tipo a
	            JOIN unidad_tiempo b ON a.txt_uxt_id=b.uxt_id WHERE a.txt_id=".$idtramite.";";
	    $db->query($sql);
	    $db->next_row();
	    $tiempomaximo = $db->txt_tmaximo;
            $unidadtiempo = $db->uxt_nombre;
	    $db->close();
	    $db = new Database();
	   $sql = "SELECT a.pxt_tmpolimite,a.pxt_uxt_id,b.uxt_nombre FROM tramite_pasos a
	           JOIN unidad_tiempo b ON a.pxt_uxt_id = b.uxt_id
		   WHERE a.pxt_estado=1 AND pxt_txt_id=".$idtramite.";";
           //echo $sql; exit;
	   $db->query($sql);
	   $lista = "<table align='center'><tr><td>&nbsp;</td><td>Cantidad</td><td>Tiempo</td></tr>";
	   $total = 0;
	   while($db->next_row())
	   {
	        $tiempo = $db->pxt_tmpolimite; 
                $total = (int)$total + (int)$tiempo;		
                $uxt = $db->uxt_nombre;	
		$lista .= "<tr><td>&nbsp;</td><td align='center'>".$tiempo."</td><td align='center'>".$uxt."</td></tr>";
	   }
	   $lista .= "<tr><td>TOTAL&nbsp;&nbsp;</td><td align='center'>$tiempomaximo</td><td align='center'>$unidadtiempo</td></tr>";
	   $lista .= "</table>";
	   //$db->close();
	   return $lista;
	}
	function tooltip($palabra)
	{  
	   $Gen = new General();
	   $db = new Database();
	   $sql = "SELECT txt_texto FROM textos WHERE txt_pagina='".$palabra."' AND txt_estado=1;"; 
	   $db->query($sql);
	   $db->next_row();
	   $tex = $Gen->limpiarCaracteresEspeciales($db->txt_texto);
	   //$texto = $Gen->limpiarCaracteresEspeciales($Gen->GetUnDato($palabra,$sql));
	   echo '<a class="Ntooltip" href="#"><img src="imagenes/icono_informacion.png">
	         <span>'.$tex.'</span></a>';
	}
	function idaxmenuid($nombretabla)
	{
	      $db = new Database();
	      $sql = "SELECT axm_id FROM admin_menu WHERE axm_nombre_tabla='".$nombretabla."';"; 
              $db->query($sql);
              $db->next_row();
              $id = $db->axm_id;
              $db->close();
              return $id;	      
	}
	function selecciondias($lun,$mar,$mier,$jue,$vie,$sab)
	{
	     $total = 0;
		 if($lun==32)
		    $total = $total + $lun;
		 if($mar==16)
		    $total = $total + $mar;
		 if($mier==8)
		    $total = $total + $mier;
		 if($jue==4)
		    $total = $total + $jue;
		 if($vie==2)
		    $total = $total + $vie;
		 if($sab==1)
		    $total = $total + $sab;
		 return $total;
	}
	function idtramite($consecutivo)
	{
       $Gen = new General();
	   $sql = "SELECT tra_id FROM tramite WHERE tra_consecutivo='".$consecutivo."';";  
 	   $id = $Gen->GetUnDato("tra_id",$sql);
	   return $id;
	}
	function GetDocumento($id)
	{
	    $db = new Database();
	    $sql = "SELECT a.doc_ciu_id, 
					   a.doc_exc_id, 
					   a.doc_txd_id, 
					   a.doc_axe_id, 
					   e.axe_nombre, 
					   a.doc_usudestinoid, 
					   a.doc_txe_id, 
					   a.doc_usudestino, 
					   a.doc_fecdoc, 
					   a.doc_asunto, 
					   a.doc_entremitente, 
					   a.doc_remitente, 
					   a.doc_anexos, 
					   a.doc_obsdocmento, 
					   c.dep_id, 
					   f.axs_id, 
					   f.axs_nombre, 
					   g.exa_id, 
					   j.exc_nombre, 
					   b.ciu_nombre, 
					   c.dep_nombre, 
					   d.txd_nombre, 
					   g.exa_nombre, 
					   f.axs_nombre, 
					   h.nom, 
					   doc_txe_id, 
					   l.ext_nombre, 
					   l.ext_id, 
					   k.txe_nombre, 
					   j.exc_nombre
				FROM documento a
				JOIN ciudad b ON a.doc_ciu_id = b.ciu_id
				JOIN departamento c ON b.ciu_dep_id = c.dep_id
				JOIN tipo_documento d ON a.doc_txd_id = d.txd_id
				LEFT JOIN alianza_dep e ON a.doc_axe_id = e.axe_id
				LEFT JOIN alianza_sedes f ON e.axe_axs_id = f.axs_id
				LEFT JOIN alianza_emp g ON f.axs_exa_id = g.exa_id
				JOIN v_depxdepal h ON a.doc_usudestinoid = h.usu_id
				LEFT JOIN usuario i ON a.doc_usu_id = i.usu_id
				LEFT JOIN empresa_cliente j ON a.doc_exc_id = j.exc_id
				JOIN tipo_empresacliente k ON k.txe_id = a.doc_txe_id
				JOIN empresas_tipo l ON l.ext_id = k.txe_ext_id
				WHERE a.doc_id =".$id.";";
				//echo $sql;
		$db->query($sql);
		$db->next_row();
		$r[0] = $db->dep_id;
		$r[1] = $db->doc_ciu_id;
		$r[2] = $db->doc_txd_id;
		$r[3] = $db->exa_id;
		$r[4] = $db->axs_id;
		$r[5] = $db->doc_axe_id;
		$r[6] = $db->doc_usudestinoid;
		$r[7] = $db->doc_usudestino;
		$r[8] = $db->doc_fecdoc;
		$r[9] = $db->doc_asunto;
		$r[10] = $db->doc_entremitente;
		$r[11] = $db->doc_remitente;
		$r[12] = $db->doc_anexos;
		$r[13] = $db->doc_obsdocmento;
		$r[14] = $db->axs_nombre;
		$r[15] = $db->axe_nombre;
		$r[16] = $db->axe_nombre;
		$r[17] = $db->doc_exc_id;
		$r[18] = $db->doc_exc_nombre;
		$r[19] = $db->nom;
		$r[20] = $db->doc_txe_id;
		
		$r[22] = $db->ciu_nombre;
		$r[23] = $db->dep_nombre;
		$r[24] = $db->txd_nombre;
		$r[25] = $db->exa_nombre;
		$r[26] = $db->axs_nombre;
		$r[27] = $db->nom;
		$r[28] = $db->ext_nombre;
		$r[29] = $db->ext_id;
		$r[30] = $db->txe_nombre;
		$r[31] = $db->exc_nombre;
		$db->close();
		return $r;
	}
	function seleccione($valor)
	{
	   if($valor!="")
	     $var = strtoupper($valor);
	   else
	     $var = "SELECCIONE";
	   return $var;
	}
	function guardarfiles($idtramite,$nombre="SIN NOMBRE",$file,$obs,$equipo,$usuario)
	{
	     $db = new Database();
		 $sql = "INSERT INTO tramite_documentos(dxt_tra_id,dxt_nombre,dxt_file,dxt_observaciones,dxt_usu_id,dxt_equipo) 
		         VALUES(".$idtramite.",'".$nombre."','".$file."','".$obs."',".$usuario.",'".$equipo."');";   
		 //echo $sql;exit;
		 $db->query($sql);
		 $numafect = $db->query_last_id();
         return $numafect;
	}
	function listardocumentod($idtramite,$path,$perfil)
	{
	    
	   $db = new Database();
	   $sql = "SELECT dxt_id,dxt_nombre,dxt_file,dxt_observaciones FROM tramite_documentos 
	           WHERE dxt_tra_id=".$idtramite." AND dxt_estado=1;"; //exit;
		//echo $sql;
	   $db->query($sql);
	   $tabla = "";
	   while($db->next_row())
	   {   if($db->dxt_nombre=="")
	          $db->dxt_nombre = $db->dxt_file;
	      $tabla .= '<tr><td style="text-transform:uppercase; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px; text-align:justify" valign="top">'.$db->dxt_nombre.'</td>
                    <td align="center" valign="top"><a href="'.$path.$db->dxt_file.'" target="blank"><img src="imagenes/ver.png"></a></td>
                    <td style="text-transform:uppercase; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px; text-align:justify">'.$db->dxt_observaciones.'</td>';
                    if($perfil==1)
					  $tabla .= '<td align="center" title="Borrar" onclick="eliminardoc('.$db->dxt_id.')" style="cursor:pointer"> x </td>';
					$tabla .= '</tr>';
	   }
	   $db->close();
	   return $tabla;
	}
	function ultimoDiaMes($mes,$año) 
   { 
      for ($dia=28;$dia<=31;$dia++) 
         if(checkdate($mes,$dia,$año)) $fecha="$año/$mes/$dia"; 
      return $fecha; 
   } 
   //echo "<br>".ultimoDiaMes(2,2012); 
   //echo "<br>".ultimoDiaMes(2,2013);   
   function suma_fechas($fecha,$ndias)
            
{
            
      if (preg_match("/[0-9]{1,2}\/[0-9]{1,2}\/([0-9][0-9]){1,2}/",$fecha))
            
              list($año,$mes,$dia)=split("/", $fecha);
            
      if (preg_match("/[0-9]{1,2}-[0-9]{1,2}-([0-9][0-9]){1,2}/",$fecha))
            
              list($año,$mes,$dia)=split("-",$fecha);
        $nueva = mktime(0,0,0, $mes,$dia,$año) + $ndias * 24 * 60 * 60;
        $nuevafecha=date("Y-m-d",$nueva);
            
      return ($nuevafecha);  
            
}
function sinnombre($v)
{
     if($v=="")
         $var = "*****SIN NOMBRE*****";  
     else
         $var =	$v;
     return $var;		 
}
   
  function Observaciones($txo_tra_id,$txo_reales='N/A',$txo_observaciones,$txo_estado=1,$txo_ip,$txo_usu_id,$estadotramite)
  {
     $Gen = new General();
     $_POST['txo_tra_id'] = $txo_tra_id;
	 $_POST['txo_reales'] = $txo_reales;
	 $_POST['txo_observaciones'] = $txo_observaciones;
	 $_POST['txo_estado'] = $txo_estado;
	 $_POST['txo_ip'] = $txo_ip;
	 $_POST['txo_usu_id'] = $txo_usu_id;
	 $_POST['txo_ext_id'] = $estadotramite;
	 $datos = "txo_tra_id|N,txo_reales|S,txo_observaciones|S,txo_estado|N,txo_ip|S,txo_usu_id|N,txo_ext_id|N";
     $id = $Gen->SetValores($datos,"tramite_observaciones");
	 return $id;
  }
  function seguimiento($idtramite,$idusuario,$idestado,$idusuasignado,$ip)
  {
     $Gen = new General();
	 $_POST['txs_tra_id'] = $idtramite;
	 $_POST['txs_usu_id'] = $idusuario;
	 $_POST['txs_ext_id'] = $idestado;
	 $_POST['txs_asig_id'] = $idusuasignado;
	 $_POST['txs_ip'] = $ip;
	 $datos = "txs_tra_id|N,txs_usu_id|N,txs_asig_id|N,txs_ext_id|N,txs_ip|S";
	 $id = $Gen->SetValores($datos,"tramite_seguimiento");
	 return $id;
  }
  function UsuarioAsignado($idtramite)
  {
     //Funcion para buscar al usuario encargado del tramitemallll
	 $db = new Database();
	 $sql = "SELECT txs_asig_id FROM tramite_seguimiento WHERE txs_tra_id=".$idtramite." ORDER BY txs_id DESC LIMIT 1;";
	 $db->query($sql);
	 $db->next_row();
     $asig = $db->txs_asig_id;
	 $db->close();
	 return $asig;
  }
  
  
 
  }
?>

