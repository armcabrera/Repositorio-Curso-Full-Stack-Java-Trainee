document.addEventListener("DOMContentLoaded", function() {

    document.getElementById("formcliente").addEventListener('submit', validarcliente); 
  });
  
  function validarcliente(evento) {
  
    evento.preventDefault();
    
	var ingresar = 0;
	var rut = document.getElementById('textrunusuario').value;
	var nombre = document.getElementById('textnombreusuario').value;
	var apellido = document.getElementById('textapellidousuario').value;
	var fecnac = document.getElementById('textfechausuario').value;
	var telefono = document.getElementById('texttelefono').value;
	var direccion = document.getElementById('textdireccion').value;
	var comuna = document.getElementById('textcomuna').value;
	var edad = document.getElementById('textedad').value;
   

	 if(rut  == null || rut.length==0) {
        document.getElementById("textrunusuario").style.background="#EDF98E";
        document.getElementById("textrunusuario").style.borderColor="#000000";

    }else{

        document.getElementById("textrunusuario").style.background="#ffffff";
        document.getElementById("textrunusuario").style.borderColor="#9A9797";
        ingresar++;

    }
    
    if(nombre  == null || nombre.length==0) {
        document.getElementById("textnombreusuario").style.background="#EDF98E";
        document.getElementById("textnombreusuario").style.borderColor="#000000";

    }else{

        document.getElementById("textnombreusuario").style.background="#ffffff";
        document.getElementById("textnombreusuario").style.borderColor="#9A9797";
        ingresar++;

    }

	if(apellido  == null || apellido.length==0) {
        document.getElementById("textapellidousuario").style.background="#EDF98E";
        document.getElementById("textapellidousuario").style.borderColor="#000000";

    }else{

        document.getElementById("textapellidousuario").style.background="#ffffff";
        document.getElementById("textapellidousuario").style.borderColor="#9A9797";
        ingresar++;

    }
    
    if(fecnac  == null || fecnac.length==0) {
        document.getElementById("textfechausuario").style.background="#EDF98E";
        document.getElementById("textfechausuario").style.borderColor="#000000";

    }else{

        document.getElementById("textfechausuario").style.background="#ffffff";
        document.getElementById("textfechausuario").style.borderColor="#9A9797";
        ingresar++;

    }
    
     if(telefono  == null || telefono.length==0) {
        document.getElementById("texttelefono").style.background="#EDF98E";
        document.getElementById("texttelefono").style.borderColor="#000000";

    }else{

        document.getElementById("texttelefono").style.background="#ffffff";
        document.getElementById("texttelefono").style.borderColor="#9A9797";
        ingresar++;

    }
    
    if(direccion  == null || direccion.length==0) {
        document.getElementById("textdireccion").style.background="#EDF98E";
        document.getElementById("textdireccion").style.borderColor="#000000";

    }else{

        document.getElementById("textdireccion").style.background="#ffffff";
        document.getElementById("textdireccion").style.borderColor="#9A9797";
        ingresar++;

    }
    
    if(comuna  == null || comuna.length==0) {
        document.getElementById("textcomuna").style.background="#EDF98E";
        document.getElementById("textcomuna").style.borderColor="#000000";

    }else{

        document.getElementById("textcomuna").style.background="#ffffff";
        document.getElementById("textcomuna").style.borderColor="#9A9797";
        ingresar++;

    }
    
    if(edad  == null || edad <= 0) {
        document.getElementById("textedad").style.background="#EDF98E";
        document.getElementById("textedad").style.borderColor="#000000";

    }else{

        document.getElementById("textedad").style.background="#ffffff";
        document.getElementById("textedad").style.borderColor="#9A9797";
        ingresar++;

    }
    
    
   

 	if(ingresar==8){

        alert("Cliente Creado");
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