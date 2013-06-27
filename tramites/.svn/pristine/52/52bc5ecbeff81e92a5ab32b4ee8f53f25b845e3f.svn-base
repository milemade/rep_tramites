<?php
         include "conf/clave.php";

	     $sql = "SELECT tra_consecutivo FROM $t_tramite WHERE tra_consecutivo LIKE'".$_POST['dempresa']."%';";
		 $dbm = new Database();
		 $dbm->query($sql);
		 $dbm->next_row();
		 $max = $dbm->tra_consecutivo;
		 $dbm->close();
		 if($max=="")
		   $max = $_POST['dempresa'].date('Y')."000400";
		 else
		 {
		     echo $cedenamax = substr($max,9);
			 echo $cedenamax0 = substr($max,0,9);
			 $maximo = (int)$cedenamax + 1;
			 $max = $cedenamax0.$maximo;
		 }
		 ?>
		 