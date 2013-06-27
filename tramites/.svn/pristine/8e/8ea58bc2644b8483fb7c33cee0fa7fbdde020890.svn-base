<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CSSLab: ventana modal s&oacute;lo con CSS</title>
	<style type="text/css">
	* {
		margin: 0;
		padding: 0;
	}
	
	body {
		font-family: Georgia, "Times New Roman", Times, serif;
		font-size: 2em;
		background: #900;
		color: #fff;
	}
	
	a {
		color: #F00;
	}
	
	/* base semi-transparente */
    .overlay{
        display: none;
        position: relative;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: #000;
        z-index:1001;
		opacity:.75;
        -moz-opacity: 0.75;
        filter: alpha(opacity=75);
    }
	
    /* estilo para lo q este dentro de la ventana modal */
    .modal {
        display: none;
        position: relative;
        top: 25%;
        left: 25%;
        width: 50%;
        height: 50%;
        padding: 16px;
        background: #fff;
		color: #333;
        z-index:1002;
        overflow: auto;
    }
    </style>
</head>

<body>

<!-- base semi-transparente -->
    <div id="fade" class="overlay" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
	</div>
<!-- fin base semi-transparente -->
 
<!-- ventana modal -->  
	<div id="light" class="modal">
    	<p>Aqu&iacute; est&aacute; el contenido que quieras mostrar. Para <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">cerrar</a> basta un simple JS. El estilo lo puede definir dentro de <strong>.contenido</strong></p>
    </div>
<!-- fin ventana modal -->

<!-- contenido página -->
    <p>Con un <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">simple click</a> podr&aacute;s desplegar la ventana modal.</p>
<!-- fin contenido página -->
    
</body>
</html>
