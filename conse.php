<?
$siglas = "CONT";
$consec = "CONT2012240000";	
echo $letras = substr($consec, 0, strlen($siglas));
echo "<BR>";
echo strlen($siglas);
echo "<BR>";
echo strlen($consec);
echo "<BR>";
echo strlen($consec)-1;
echo "<BR>";
echo $numero = substr($consec, strlen($siglas), strlen($consec)-1);
echo "<BR>";
echo $anio = substr($numero,0,4);
echo "<BR>";
echo $mas = substr($numero,4,strlen($consec)-1);
echo "<BR>";
$numero = (int)$numero + 1;	
echo $new = $siglas."".$anio."".$mas;


?>