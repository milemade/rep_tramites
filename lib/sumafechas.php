<?php
function suma_fechas($fecha,$ndias)
{
      if (preg_match("/[0-9]{1,2}\/[0-9]{1,2}\/([0-9][0-9]){1,2}/",$fecha))
            list($dia,$mes,$a�o)=split("/", $fecha);
            
      if (preg_match("/[0-9]{1,2}-[0-9]{1,2}-([0-9][0-9]){1,2}/",$fecha))
            list($dia,$mes,$a�o)=split("-",$fecha);
        $nueva = mktime(0,0,0, $mes,$dia,$a�o) + $ndias * 24 * 60 * 60;
        $nuevafecha= date("Y-m-d",$nueva);   
      return ($nuevafecha);            
}
echo '<head>
            
              <title>'.$_SERVER[PHP_SELF].'</title>
            
      </head>
            
      <html>
            
      <body>';
$f1="30/08/2012";
            
$f2="30-01-1992";
$f11=suma_fechas($f1, 5);
            
      echo "$f1 m�s 25 es  $f11<br>";
$f11=suma_fechas($f1, -40);
            
      echo "$f1 menos 40 es  $f11<br>";
$f21=suma_fechas($f2, 365);
            
      echo "$f2 m�s 365 es  $f21<br>";
$f21=suma_fechas($f2, -365);
            
      echo "$f2 menos 365 es  $f21<br>";
            
echo "<a href=$_SERVER[PHP_SELF]>Recargar la P�gina</a>";
echo '</body>
            
      </html>';
?>