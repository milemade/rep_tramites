<?
  echo $maximo = 201200400;
  echo "<BR>";
  $valor_cadena = (string)$maximo; 
  $arr = substr($valor_cadena, 6,strlen($valor_cadena-1));
  echo $arr."<BR>";
  echo substr($valor_cadena, 0,6);
  include "conf/clave.php";
  $sql = " SELECT MAX(tra_consecutivo)max FROM tramite;";
		$db = new Database();
		$db->query($sql);
		$db->next_row();
		if($db->max=="")
		  $maximo = 201200400;
		else
		{
		     $valor_cadena = (string)$db->max; 
			 $inicial = substr($valor_cadena, 0,6);
			 $arr = substr($valor_cadena, 6,strlen($valor_cadena-1));
			 $arr = (int)$arr + 1;
			 $maximo = $inicial."".$arr;
		}
		
		
		$db = new Database();
		$sql = "SELECT a.tra_consecutivo,a.tra_txt_id, a.tra_cxt_id, a.tra_txo_id, a.tra_nombre, a.tra_prioridad, a.tra_consecutivo, a.tra_observaciones,   
		               b.txr_usuinicial, b.txt_usuasig, b.txt_observaciones
				FROM tramite a
				LEFT JOIN tramite_reasignacion b ON a.tra_id = b.txr_tra_id
				WHERE tra_id = 201200400";
				
		$db->query($sql);
        echo $numcampos = $db->num_fields();
		echo $db->seek(0);
		////////////NOMBRE EQUIPO INTRANET///////////////////////
		
	$hostname = explode(".", gethostbyaddr($_SERVER['REMOTE_ADDR']));
echo $hostname[0];  			
				
				?>