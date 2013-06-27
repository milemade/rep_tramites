<script>
function eliminar(campo_id,tabla,id,campo_estado,idaxm)
{
   if (confirm("Esta seguro que desea eliminar este registro"))
   {
		window.location="config_eliminar.php?campo_id="+campo_id+"&v_id="+id+"&tabla="+tabla+"&campo_estado="+campo_estado+"&idaxm="+idaxm;
   }
}
function ira(tabla,id,n)
{ 
	window.location="n.php?nombretabla="+tabla+"&id="+id+"&n="+3; 
}
</script>
<script type="text/javascript">
function ajaxFunction() {
  var xmlHttp;
  
  try {
   
    xmlHttp=new XMLHttpRequest();
    return xmlHttp;
  } catch (e) {
    
    try {
      xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
      return xmlHttp;
    } catch (e) {
      
	  try {
        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
        return xmlHttp;
      } catch (e) {
        alert("Tu navegador no soporta AJAX!");
        return false;
      }}}
}




function Enviar(_pagina,capa) {
    var ajax;
    ajax = ajaxFunction();
    ajax.open("POST", _pagina, true);
    ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    ajax.onreadystatechange = function() {
		if (ajax.readyState==1){
			document.getElementById(capa).innerHTML = " Aguarde por favor...";
			     }
		if (ajax.readyState == 4) {
		   
                document.getElementById(capa).innerHTML=ajax.responseText; 
		     }}
			 
	ajax.send(null);
} 
</script>
<style type="text/css">
img{border:none;}
a{color:#FFF; text-decoration:none;}
a:hover{text-decoration:none;}


#contenedor{width:950px;
margin: 0px auto;
overflow:hidden;
}
#loading{
 text-align:center; 
background:#6CBF19; 
color:#000; 
width:30%;
margin:0px auto;
  -moz-border-radius-bottomright:5px;
  -moz-border-radius-bottomleft:5px;
  -webkit-border-bottom-right-radius:5px;
  -webkit-border-bottom-left-radius:5px;

}
#loading2{
 text-align:center; 
background:#000000; 
color:#fff; 
width:30%;
margin:0px auto;
  -moz-border-radius-bottomright:5px;
  -moz-border-radius-bottomleft:5px;
  -webkit-border-bottom-right-radius:5px;
  -webkit-border-bottom-left-radius:5px;

}
#contenido{
float:right;
padding:5px;
width:750px;
//background:#F2F2F2;
}
#enlaces{float:left;}
#encabezado{
background:#999;
list-style:none;
  font-size:14px;
  text-align:center;
   color:#fff;
   }
ul{
margin-top:-10px;
width:150px;
padding:10px;
list-style:none;
} 
  
li{
padding:2px;
margin:3px 0px;
width:200px;
border:1px solid #27708B;
background:#365372;
text-transform:uppercase;
}
li:hover{background:#7ea3ca;}

span.test { direction: rtl; unicode-bidi:bidi-override; } 

li:first-child{
font:bold 15px Geneva,Georgia;
color:#FFF;
//background:#666666;
background:#7ea3ca;
text-transform:uppercase;
}
</style>
<div id="centro">

<div id="basic-accordian" ><!--Parent of the Accordion-->
<div style="width:250px; float:left">


            <ul id="enlaces">
            <li><a href="javascript:Enviar('bio.html','contenido')" title="Mi Biografía">Mi Biografía</a></li>
            <li><a href="javascript:Enviar('blog.html','contenido')" title="Mi Blog">Mi Blog</a></li>
            <li><a href="javascript:Enviar('fotos.html','contenido')" title="Mis Fotos">Mis fotos</a></li>
              <li><a href="javascript:Enviar('pdf.html','contenido')" title="Mis Fotos">PDF</a></li>
            </ul>
          
  </div> <!--FIN MENU LATERAL-->

<div style="float:right; width:640px;" id="contenido">



    <h1 class="tit_bobo">TRAMITE CATEGORIA</h1>
    	<p class="texto_bobo">Se definen las categorías de los trámites.</p>
        <table width="620" border="0" cellpadding="0"  >
  <tr class="cabecera">
    <td >Nombre</td>
    <td colspan="2">Opciones</td>
  </tr>
  <tr class="celda_izq">
    <td width="377" class="txt_espacio" >Requiere Respuesta</td>
    <td width="32" class="txt_espacio"><form><input type="image" src="tabbed_pages/editar.png" width="32" height="32" /></form></td>
    <td width="32" class="txt_espacio"><form><input type="image" src="tabbed_pages/eliminar.png" width="32" height="32" /></form></td>
  </tr>
  
  <tr class="celda_izq_azul">
   <td width="377" class="txt_espacio" >Solo informativo</td>
    <td width="32" class="txt_espacio"><img src="tabbed_pages/editar.png" alt="" width="32" height="32" /></td>
    <td width="32" class="txt_espacio"><img src="tabbed_pages/eliminar.png" alt="" width="32" height="32" /></td>
  </tr>
 
</table><br />

<div align="center">
<a href="#" class="hoja">1</a>
<a href="#" class="hoja_sin">2</a>
<a href="#" class="hoja_sin">3</a>
<a href="#" class="hoja_sin">4</a>
<a href="#" class="ingresar">INGRESAR</a>
</div>
    
  
 
  
  
<br class="clear" />
</div><!--FIN DIV POSICION-->
<br class="clear" />
  <p class="texto">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis purus nisl. Aliquam erat volutpat. Phasellus vel volutpat neque. Suspendisse hendrerit commodo dapibus. Nam et felis eget nunc pulvinar accumsan. Pellentesque porta faucibus lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.<br />
<br />
Phasellus iaculis lorem sodales diam dignissim id tristique augue pellentesque. Fusce ut mi ac purus auctor faucibus. Mauris pulvinar pulvinar vehicula. Sed cursus lacinia nisl ac pulvinar. Sed imperdiet pretium odio eget commodo. Donec consequat ultrices mollis. Proin id iaculis ligula. Aenean felis dui, laoreet vel suscipit in, malesuada commodo massa. Fusce sit amet velit nec ligula varius pharetra ac eu libero. Aliquam erat volutpat.</p>
<br class="clear" />
</div>
<br class="clear" />
