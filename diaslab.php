<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title> Página nueva </title>
<meta name="Author" content="derkeNuke">
<style type="text/css">
</style>
</head>

<body>

<script type="text/javascript">
function e(q,br) {
document.body.appendChild( document.createTextNode(q) );
if(!br) document.body.appendChild( document.createElement("BR") );
}

// Creo una fecha
var hoy = new Date();

// Nuestro método para sumar n dias (que no sean ni Domingo)
Date.prototype.sumarLaborables = function(n) {
    for(var i=0; i<n; i++) {
        this.setTime( this.getTime()+24*60*60*1000 );
        if( this.getDay()==0 )    //  o domingo
            i--;            // hacemos el bucle una unidad mas larga.
    }
    return this;
}

// COMPLETAMOS CON CEROS A LA IZQUIERDA AQUELLOS VALORES QUE LO NECESITEN PARA VERLOS BONITOS
Date.prototype.getXXXzeroFilled = function(propiedad) {
    var dev = this["get"+propiedad]();
    if( (propiedad=="Milliseconds") && (dev<100) && (dev>9) ) dev = "0"+dev;
    else if( dev<10 ) dev = (propiedad=="Milliseconds")?"00":"0"+dev;
    return dev.toString();
}
Date.prototype.getHoursZeroFilled = function() { return this.getXXXzeroFilled("Hours"); }
Date.prototype.getMinutesZeroFilled = function() { return this.getXXXzeroFilled("Minutes"); }
Date.prototype.getSecondsZeroFilled = function() { return this.getXXXzeroFilled("Seconds"); }
Date.prototype.getMillisecondsZeroFilled = function() { return this.getXXXzeroFilled("Milliseconds"); }



// REESCRIBIMOS EL MÉTODO TOSTRING() PARA REPRESENTARLO EN CASTELLANO BONITO
Date.prototype.toString = function() {
    var diaSem = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"][ this.getDay() ];
    var mes = "Enero;Febrero;Marzo;Abril;Mayo;Junio;Julio;Agosto;Septiembre;Octubre;Noviembre;Diciembre".split(";")[this.getMonth()];
    var str = diaSem+", "+this.getDate()+" de "+mes+" de "+this.getFullYear()+" a las "+this.getHoursZeroFilled()+":"+this.getMinutesZeroFilled()+":"+this.getSecondsZeroFilled()+" "+this.getMillisecondsZeroFilled()+".";
    return str;
}

e(hoy);
for(var i=0; i<5; i++) {
    hoy.sumarLaborables(1);
    e( hoy );
}

e(""); e("");
//e( new Date().sumarLaborables(15) );
e( new Date().sumarLaborables(1) );

</script>
</body>
</html>  