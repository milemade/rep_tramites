<?php require_once("../conf/clave.php");

   //$db = new mysqli('localhost', 'root' ,'12345', 'tramites');
	$db = new Database();
		
		if(isset($_POST['queryString'])) {
			//$queryString = $db->real_escape_string($_POST['queryString']);
			$queryString = $_POST['queryString'];
			
			if(strlen($queryString)>0) {

				$db->query("SELECT tra_consecutivo FROM tramite WHERE tra_consecutivo LIKE '$queryString%' LIMIT 10");
				$numrows = $db->num_rows();
				if($numrows>0) {
				echo '<ul>';
					while($db->next_row()) {
	         			echo '<li onClick="fill(\''.addslashes($db->tra_consecutivo).'\');">'.$db->tra_consecutivo.'</li>';
	         		}
				echo '</ul>';
					
				} else {
					echo 'OOPS we had a problem :(';
				}
			} else {
				// do nothing
			}
		} else {
			echo 'There should be no direct access to this script!';
		}
	
?>