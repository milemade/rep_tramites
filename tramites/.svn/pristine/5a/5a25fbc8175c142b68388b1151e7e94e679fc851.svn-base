<?
//CREAR TRAMITE
 if(isset($_POST['id']) && $_POST['id']>0)
     {   //Si existe id del tramite crea las variables de session
	     $p = $Tra->GetDatosTramite($_POST['id']);
		 $_SESSION['consecutivo'] = $p[0];
		 $_SESSION['departamento'] = $p[1];
		 $_SESSION['ciudad'] = $p[2];  
		 $nn = 42;
		// print_r($_SESSION);
		 
     }
	 else
	 {   //Si no existe destruye las variables de session
	     unset($_SESSION['consecutivo']);
	     unset($_SESSION['departamento']);
	     unset($_SESSION['ciudad']);  
		 $nn = 41;
	 }
	 //CREAR TRAMITE
	 ?>
	 <?php 
     //print_r($_SESSION);
      if(!isset($_SESSION['consecutivo'])) { 
        $bb = 1;//Bandera nuevo registro
	 }
      if(isset($_SESSION['consecutivo'])) 
	  {
	     $bb = 2; //Bandera registro actual
	  }
     ?>
<html>
<head>
<style>
table.tabs {
        border-collapse: separate;
        border-spacing: 0;
        background-color: transparent;
        }
    table.tabs th.tabck {
        border: gray solid 1px;
        border-bottom: 0;
        background-color: gray;
        padding-left: 0.2em;
        padding-right: 0.2em;
        text-align: center;
		font-size: 15px;
	    font-family: verdana;
	    font-weight: bolder;
        cursor: pointer;
        }
    table.tabs th.tabcks {
        border: 0;
        border-bottom: blue solid 1px;/*Color separador*/
        }    
    table.tabs td {
        //border: gray solid 1px;
        border-top: 0;
        }
    table.tabs tr.filadiv {
        background-color: rgb(235, 235, 225);
        }
    table.tabs div.tabdiv { 
        background-color: rgb(235, 235, 225);
        border: 0;
        padding: 0.5em;
        overflow: auto;
        display: none;
        width: 60em; 
        height: 25em;//Alto del contenedor de pestañas
        }
  table.alg
  {
  }
  table.tra {
        border-collapse: separate;
        border-spacing: 0;
        background-color: transparent;
		
        }
	.style2 {
	font-size: 24px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #333366;
	font-weight: bold;
}
</style>
<script>
var maxTabs = 10;
window.onload = function(){
    activaTab(document.getElementById("tabck-1"));
}
function activaTab(unTab) {
    try {
        //Los elementos div de todas las pestañas están todos juntos en una
        //única celda de la segunda fila de la tabla de estructura de pestañas.
        //Hemos de buscar la seleccionada, ponerle display block y al resto
        //ponerle display none.
        var id = unTab.id;
        if (id){
            var idTab = id.split("tabck-");
            var numTab = parseInt(idTab[1]); 
            //Las "tabdiv" son los bloques interiores mientras que los "tabck"
            //son las pestañas.
            var esteTabDiv = document.getElementById("tabdiv-" + numTab);
            for (var i=1; i<maxTabs; i++) {
                var tabdiv = document.getElementById("tabdiv-" + i);
                if (tabdiv) {
                    var tabck = document.getElementById("tabck-" + i);
                    if (tabdiv.id == esteTabDiv.id) {
                        tabdiv.style.display = "block";
                        tabck.style.color = "#00548F";//Color letras tabs
                        tabck.style.backgroundColor = "rgb(235, 235, 225)";
                        tabck.style.borderBottomColor = "rgb(235, 235, 225)";
                    } else {
                        tabdiv.style.display = "none";
                        tabck.style.color = "white"; 
                        tabck.style.backgroundColor = "#00548F"; //Color tabs no seleccionados
                        tabck.style.borderBottomColor = "#00548F"; //Coler bordes  
                    }
                } else {
                    break;
                }
            }
        }
    } catch (e) {
        alert("Error al activar una pestaña. " + e.message);
    }
}       
</script> 
</head>
<body>
<table class="tabs" align="center">
    <tr>
        <!--<th class="tabcks">&nbsp;</th>-->
        <th class="tabck" id="tabck-1" onclick="activaTab(this)">Tr&aacute;mite</th> 
        <th class="tabcks">&nbsp;</th>
        <th class="tabck" id="tabck-2" onclick="activaTab(this)">Documento</th>
        <th class="tabcks">&nbsp;</th>
        <th class="tabck" id="tabck-3" onclick="activaTab(this)">Carga Documentos</th> 
<th class="tabcks">&nbsp;</th>
        <th class="tabck" id="tabck-4" onclick="activaTab(this)">Observaciones</th>	
<th class="tabcks">&nbsp;</th>
        <th class="tabck" id="tabck-7" onclick="activaTab(this)">Reasignaci&oacute;n</th>
<th class="tabcks">&nbsp;</th>
        <th class="tabck" id="tabck-5" onclick="activaTab(this)">Mis Tr&aacute;mites</th>	
<th class="tabcks">&nbsp;</th>
        <th class="tabck" id="tabck-6" onclick="activaTab(this)">Consulta</th>	
			
    </tr>
    <tr class="filadiv">
        <td colspan="14">
            <div class="tabdiv" id="tabdiv-1">
                <?php require_once("crear_tramite.php");?>
            </div>
            <div class="tabdiv" id="tabdiv-2">
                <?php if($bb==2) require_once("agregar_documento.php"); else echo '<table width="500" border="0">
  <tr>
    <td><div align="center">
      <pre class="style2" style="padding-top:75px;padding-left:175px">Debe Guardar o Consultar un tr&aacute;mite</pre>
    </div></td>
  </tr>
</table>';?>
            </div>
            <div class="tabdiv" id="tabdiv-3">
                <?php if($bb==2) require_once("cargar_documento.php"); else echo '<table width="500" border="0">
  <tr>
    <td><div align="center">
      <pre class="style2" style="padding-top:75px;padding-left:175px">Debe Guardar o Consultar un tr&aacute;mite</pre>
    </div></td>
  </tr>
</table>';?>
            </div>
			<div class="tabdiv" id="tabdiv-4">
                <?php if($bb==2) require_once("agregar_observaciones.php"); else echo '<table width="500" border="0">
  <tr>
    <td><div align="center">
      <pre class="style2" style="padding-top:75px;padding-left:175px">Debe Guardar o Consultar un tr&aacute;mite</pre>
    </div></td>
  </tr>
</table>';?>
            </div>
			<div class="tabdiv" id="tabdiv-5">
                <?php require_once("mistramites.php"); ?>
            </div>
			<div class="tabdiv" id="tabdiv-6">
                <form name="frmbustra" method="POST" action="aplicacion.php">
<table width="800" border="0">
  <tr>
    <td width="241">&nbsp;</td>
    <td width="144">&nbsp;</td>
    <td width="201">&nbsp;</td>
  </tr>
  <tr>
    <td class="tit_boboazul">Consecutivo Tr&aacute;mite</td>
    <td><input type="text" name="codigotra" id="codigotra" class="texto_bobo" style="text-transform:uppercase;" required value="<?=$_SESSION['consecutivo']?>"/></td>
    <td><input type="submit" name="button" class="bot" value="Enviar"  /></td>
  </tr>
  <tr><td colspan="3" style=" padding-bottom:40px; padding-top:20px;"><p class="texto_bobo">Por favor, ingrese el Consecutivo del Tr&aacute;mite para buscar sus datos.</p></td></tr>

  <td colspan="3">&nbsp;</td>
</table><input type="hidden" name="n" value="47"></form>
            </div>
			<div class="tabdiv" id="tabdiv-7">
			 <?php if($bb==2) require_once("reasignacion-tramite.php"); else echo '<table width="500" border="0">
  <tr>
    <td><div align="center">
      <pre class="style2" style="padding-top:75px;padding-left:175px">Debe Guardar o Consultar un tr&aacute;mite</pre>
    </div></td>
  </tr>
</table>';?>
            </div>
			
        </td>
    </tr>
</table>
</body>
</html>
<!--http://www.wextensible.com/como-se-hace/pestanyas-tabs/con-javascript.html-->