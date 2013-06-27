<?php
 class tramites
  {
     function usuarios_mostrar($id)
     {
         $db = new Database();
         $sql = "SELECT a.usu_act_id,a.usu_car_id,a.usu_per_id,a.usu_nombre,a.usu_apel,a.usu_corto,a.usu_cedula,
	                a.usu_user,a.usu_emailper,a.usu_emailcor,
		        a.usu_dir,a.usu_fijo,a.usu_celular,a.usu_obs,b.car_nombre,c.dxe_nombre,d.sede_id 
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
		$sql = "SELECT a.tra_txt_id, a.tra_ext_id, a.tra_cxt_id, a.tra_txo_id, a.tra_ciu_id, a.tra_axe_id, a.tra_car_id, a.tra_fechahora, a.tra_nombre, 
			a.tra_prioridad, a.tra_consecutivo, a.tra_observaciones, c.axs_id, c.axs_nombre, d.exa_id, d.exa_nombre,f.dep_id,f.dep_nombre,
			g.txt_usuasig,h.nom,j.dxe_nombre,k.sede_id,g.txt_observaciones
			FROM tramite a
			JOIN alianza_dep b ON a.tra_axe_id = b.axe_id
			JOIN alianza_sedes c ON b.axe_axs_id = c.axs_id
			JOIN alianza_emp d ON c.axs_exa_id = d.exa_id
			JOIN ciudad e ON a.tra_ciu_id = e.ciu_id
			JOIN departamento f ON e.ciu_dep_id = f.dep_id
			JOIN tramite_reasignacion g ON a.tra_id = g.txr_tra_id
			JOIN v_usuario h ON g.txt_usuasig = h.usu_id
			JOIN cargos i ON h.usu_car_id=i.car_id
			JOIN dep_empresa j ON i.car_dxe_id = j.dxe_id
			JOIN empresa_sedes k ON j.dxe_sede_id = k.sede_id
			WHERE a.tra_id =".$codigo.";";
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
		$arr[14] = $db->sede_id;
		$arr[15] = $db->dxe_nombre;
		$arr[16] = $db->nom;
		$arr[17] = $db->tra_car_id;
		$arr[18] = $db->txt_observaciones;
		return $arr;
	}
  }
?>