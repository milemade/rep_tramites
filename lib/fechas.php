<?php
require_once("class_festivos.php");
/**
---------------------------------------------------------------------------------------
- Nombre del Script: tramites
- Finalidad del Script: Clase donde se obtienen el ccalculo de fechas laborables
- Desarrollado por: Milena Amaya de la Rosa
- Fecha de desarrollo: 21 - 08 - 2012
- Copyright: masterrobots Milena Amaya de la Rosa
---------------------------------------------------------------------------------------
*/
class Fechas{
	
 function anyo_actual() 
 {
    return date("Y");
 }
 function mes_actual() 
 { //Obtiene el número del mes Ejemplo: 1,2,3,....., 12
    return date("n");
 }
 function dia_actual() 
 { //Obtiene el día del mes Ejemplo: 1,2,3,..., 31
   return date("j");
 }
 function dia_semana_actual() 
 { //Obtiene el número del día de la semana, 0 es Domingo
   return date("w");
 }
 /***********************************************/
 function ultimo_dia_mes($anio,$mes)
  {//El último día de cualquier mes dado se puede expresar como el día "0" del mes siguiente
    $mes++;
    $último_día = mktime(0, 0, 0,$mes,0,$anio);
	$var = strftime("%d", $último_día);
	return $var;
  }
  function calcula_numero_dia_semana($datestart)
  { //Calcula el numero del día de la semana de la fecha suministrada 
    $datestart = strtotime($datestart);
    $numerodiasemana = date('N',$datestart);
    return $numerodiasemana;
  } 
  
 /*FUNCION PARA CONVERTIR EL NUMERO (DIA O MES MENORES A 10) EN FORMATO DE DOS NUMEROS*/
 function fecha_cero ($numero)
  {
	 if ($numero<10)
	  $numero="0".number_format($numero);
	return $numero;
  }
  
  function sumarmeses ($fechaini, $meses)
 {
 //recortamos la cadena separandola en tres variables de dia, mes y año
      //$dia=substr($fechaini,0,2);
      //$mes=substr($fechaini,3,2);
      //$anio=substr($fechaini,6,4);
      $arrfecha = explode('-',$fechaini);
	  list($anio,$mes,$dia) = $arrfecha;
      //Sumamos los meses requeridos
      $tmpanio=floor($meses/12);  
      $tmpmes=$meses%12;
      $anionew=$anio+$tmpanio;
      $mesnew=$mes+$tmpmes;
 
      //Comprobamos que al sumar no nos hayamos pasado del año, si es así incrementamos el año
      if ($mesnew>12) {
         $mesnew=$mesnew-12;
      if ($mesnew<10)
         $mesnew="0".$mesnew;
      $anionew=$anionew+1;
      }
      
      $fecha= date( "Y-m-d", mktime(0,0,0,$mesnew,$dia,$anionew) );
      return $fecha;
}
  
  function sumasdiaslaborables($fecha,$dias)
  {
    $F = new Fechas();
    if (preg_match("/[0-9]{1,2}\/[0-9]{1,2}\/([0-9][0-9]){1,2}/",$fecha))
        list($dia,$mes,$año)=split("/", $fecha);        
    if (preg_match("/[0-9]{1,2}-[0-9]{1,2}-([0-9][0-9]){1,2}/",$fecha))
        list($dia,$mes,$año)=split("-",$fecha);
	for($i=0;$i<$dias;$i++)
	{
		$ultdiames = $F->ultimo_dia_mes($año,$mes);
		if($dia==$ultdiames)
		{
		  $dia = 0;
		  if($mes==12)
		  {
			$año++;
			$mes = 1;
		  }
		  else
			$mes = $mes + 1;
		}
		$diad = $dia + 1;
		$fec = $año."/".$mes."/".$diad;
		$fecser = strtotime($fec);	
		$diasem = date('N',$fecser);
		$esfestivo = $F->festivo($diad,$mes);
		if($diasem!=7 && $esfestivo==0)
		{ 
		  $nueva = mktime(0,0,0, $mes,$dia,$año) + 1 * 24 * 60 * 60;
		  $nuevafecha= date("Y-m-d",$nueva); 
		}
		$dia = $dia + 1;
		if($diasem==7)
		{
		  $dias++;
		}
		if($esfestivo==1)
		{
		   $dias++;
		}  
	}
    return $nuevafecha;
}
function festivo($dia,$mes)
{
   $Frs = new festivos();
   $ban = $Frs->esFestivo($dia,$mes);
   return $ban;
}

}//End class
/*
$fec = new Fechas();
$f1="30/08/2012";
echo $fec->sumasdiaslaborables("17/08/2012",5);
echo"<BR>";
echo "<BR>RESULT VERR  ".$fec->sumasdiaslaborables($f1,5);
echo"<BR>";
echo "<BR>RESULT VERR  ".$fec->sumasdiaslaborables("30/12/2012",5);
echo"<BR>";*/
?>
