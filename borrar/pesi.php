<script type="text/javascript" >
function tab(tab_id) {//funcion tab que recibe el parametro del id
	var tab_contenido = document.getElementsByTagName("div");//definimos el elemento que sera devuelto
		for(var x=0; x<tab_contenido.length; x++) {//almacenamos los elementos divs
			name = tab_contenido[x].getAttribute("name");//recibimos el nombre de la clase
			if (name == 'tab_contenido') {//comparamos el valor del nombre
				if (tab_contenido[x].id == tab_id) {//comparamos el numero de contenido
				tab_contenido[x].style.display = 'block';//mostramos el contenido correspondiente
			}else {
				tab_contenido[x].style.display = 'none';//ocultamos los otros contenidos.
			}
		}
	}
}
</script>
<style>
/*----clase pra las pestañas---*/
#tab{
text-transform: uppercase; 
padding:5px; 
text-decoration:none; 
color:#ccc;
font: 14px/100% Arial, Helvetica, sans-serif;
 background: #4162a8;
 border: 1px solid #19253f;
-webkit-border-top-left-radius: 10px;
-webkit-border-top-right-radius: 10px;
-moz-border-radius-topleft: 10px;
-moz-border-radius-topright: 10px;
border-top-left-radius: 10px;
border-top-right-radius: 10px;
}
/*----clase para las pestañas activadas----*/
#tab:active{ 
color:#000;
background:#ccc;
}
/*----clase para el contenido------*/
.tab_contenido{
text-align:left;
padding: 8px;
display:none;
width:800px;
height: 550px;
color:#000;
background:#fff;
border:dimgray 1px solid;
}
</style>
<body>
 <br> <br> <br>
	<!-----pestañas de la tab--->
	<a id="tab" href="javascript:tab('tab_contenido1');" >Crear</a>
	<a id="tab" href="javascript:tab('tab_contenido2');" >Agregar Documento</a>
	<a id="tab" href="javascript:tab('tab_contenido3');" >Cargar Documento</a>
	<a id="tab" href="javascript:tab('tab_contenido4');" >Agregar Observaciones</a>
	<a id="tab" href="javascript:tab('tab_contenido5');" >Consultar</a>
	<!----contenidos de la tab--->
	<div name="tab_contenido" id="tab_contenido1" class="tab_contenido"style="display: block;">
	<?php require_once("crear_tramite.php");?>
		</div>
		<div name="tab_contenido" id="tab_contenido2" class="tab_contenido">
		<?php require_once("agregar_documento.php");?>
		</div>
		<div name="tab_contenido" id="tab_contenido3" class="tab_contenido">
		<?php require_once("cargar_documento.php");?>
		</div>
		<div name="tab_contenido" id="tab_contenido4" class="tab_contenido">
		<?php require_once("agregar_observaciones.php");?>
		</div>
		<div name="tab_contenido" id="tab_contenido5" class="tab_contenido">
		<?php require_once("consultar.php");?>
		</div>
		</div>