document.addEventListener("DOMContentLoaded", function() {

    document.getElementById("formcapa").addEventListener('submit', validarFormulario); 
  });
  
  function validarFormulario(evento) {
  
    evento.preventDefault();
    
    var ingresar = 0;
    var idcapa = document.getElementById('txtidcapacitacion').value;
    var diacapa = document.getElementById("txtdia").value;
    var horacapa = document.getElementById("txthoracapa").value;
    var lugarcapa = document.getElementById("txtlugar").value;
    var duracioncapa = document.getElementById("txtduracion").value;
    var rutcliente= document.getElementById("txtrutcliente").value;
    
    if(idcapa  == 0) {
        document.getElementById("txtidcapacitacion").style.background="#EDF98E";
        document.getElementById("txtidcapacitacion").style.borderColor="#000000";

    }else{

        document.getElementById("txtidcapacitacion").style.background="#ffffff";
        document.getElementById("txtidcapacitacion").style.borderColor="#9A9797";
        ingresar++;

    }

    if(diacapa  == null || diacapa.length==0) {
        document.getElementById("txtdia").style.background="#EDF98E";
        document.getElementById("txtdia").style.borderColor="#000000";

    }else{

        document.getElementById("txtdia").style.background="#ffffff";
        document.getElementById("txtdia").style.borderColor="#9A9797";
        ingresar++;

    }

    if(horacapa  == null || horacapa.length==0) {
        document.getElementById("txthoracapa").style.background="#EDF98E";
        document.getElementById("txthoracapa").style.borderColor="#000000";

    }else{

        document.getElementById("txthoracapa").style.background="#ffffff";
        document.getElementById("txthoracapa").style.borderColor="#9A9797";
        ingresar++;

    }

    if(lugarcapa  == null || lugarcapa.length==0) {
        document.getElementById("txtlugar").style.background="#EDF98E";
        document.getElementById("txtlugar").style.borderColor="#000000";

    }else{

        document.getElementById("txtlugar").style.background="#ffffff";
        document.getElementById("txtlugar").style.borderColor="#9A9797";
        ingresar++;

    }

    if(duracioncapa  <= 0 || duracioncapa >=600) {
        document.getElementById("txtduracion").style.background="#EDF98E";
        document.getElementById("txtduracion").style.borderColor="#000000";

    }else{

        document.getElementById("txtduracion").style.background="#ffffff";
        document.getElementById("txtduracion").style.borderColor="#9A9797";
        ingresar++;

    }
    
     if(rutcliente == null || rutcliente.length==0) {
        document.getElementById("txtrutcliente").style.background="#EDF98E";
        document.getElementById("txtrutcliente").style.borderColor="#000000";

    }else{

        document.getElementById("txtrutcliente").style.background="#ffffff";
        document.getElementById("txtrutcliente").style.borderColor="#9A9797";
        ingresar++;

    }


    if(ingresar==6){

        alert("Capacitacion Creada");
        this.submit();
    }else{
        alert("Debe ingresar datos requeridos");
    }


    
}


function Solo_Numerico(variable){
    Numer=parseInt(variable);
    if (isNaN(Numer)){
        return "";
    }
    return Numer;
    }
    function ValNumero(Control){
    Control.value=Solo_Numerico(Control.value);
    } 