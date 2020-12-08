// funcion para validar el formulario para ingresar asistentes

function validarasis(){

    var idasistente = document.getElementById("idasistente").value;
    var nomcmpleto = document.getElementById("textnomcompleto").value;
    var edad = document.getElementById("textedad").value;
    var correo = document.getElementById("txtcorreo").value;
    var telefono = document.getElementById("tetelefono").value;
    var feccapa = document.getElementById("feccapacitacion").value;
    var horacapa = document.getElementById("txthora").value;
    var nomcliente = document.getElementById("textnomcliente").value;
    var ingresar = 0;
   

    if(idasistente==0){

        document.getElementById("idasistente").style.background="#EDF98E";
        document.getElementById("idasistente").style.borderColor="#000000";

    }else{

        document.getElementById("idasistente").style.background="#ffffff";
        document.getElementById("idasistente").style.borderColor="#9A9797";
        ingresar++;

    }

    if( nomcmpleto==null || nomcmpleto.length==0){

        document.getElementById("textnomcompleto").style.background="#EDF98E";
        document.getElementById("textnomcompleto").style.borderColor="#000000";

    }else{

        document.getElementById("textnomcompleto").style.background="#ffffff";
        document.getElementById("textnomcompleto").style.borderColor="#9A9797";
        ingresar++;

    }

    if(edad==0 || edad>=150){

        document.getElementById("textedad").style.background="#EDF98E";
        document.getElementById("textedad").style.borderColor="#000000";

    }else{

        document.getElementById("textedad").style.background="#ffffff";
        document.getElementById("textedad").style.borderColor="#9A9797";
        ingresar++;

    }


    re=/^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
	if(!re.exec(correo)){

		document.getElementById("txtcorreo").style.background="#EDF98E";
        document.getElementById("txtcorreo").style.borderColor="#000000";

	}else{

        document.getElementById("txtcorreo").style.background="#ffffff";
        document.getElementById("txtcorreo").style.borderColor="#9A9797";
        ingresar++;
    }

    if(telefono.charAt(0)!=="+" || telefono.charAt(1)!=="5" || telefono.charAt(2)!=="6" || telefono.charAt(3)!=="9"
    || isNaN(telefono.charAt(4)) || telefono.charAt(4)=="" || isNaN(telefono.charAt(5)) || telefono.charAt(5)==""
    || isNaN(telefono.charAt(6)) || telefono.charAt(6)=="" || isNaN(telefono.charAt(7)) || telefono.charAt(7)==""
    || isNaN(telefono.charAt(8)) || telefono.charAt(8)=="" || isNaN(telefono.charAt(9)) || telefono.charAt(9)==""
    || isNaN(telefono.charAt(10)) || telefono.charAt(10)=="" || isNaN(telefono.charAt(11)) || telefono.charAt(11)==""){
        document.getElementById("tetelefono").style.background="#EDF98E";
        document.getElementById("tetelefono").style.borderColor="#000000";
    }else {
        document.getElementById("tetelefono").style.background="#ffffff";
        document.getElementById("tetelefono").style.borderColor="#9A9797";
        ingresar++;
   
    }
    
    
    if(feccapa.length==0 || feccapa==null){

        document.getElementById("feccapacitacion").style.background="#EDF98E";
        document.getElementById("feccapacitacion").style.borderColor="#000000";

    }else {
        document.getElementById("feccapacitacion").style.background="#ffffff";
        document.getElementById("feccapacitacion").style.borderColor="#9A9797";
        ingresar++;
   
    }


    if(horacapa==null || horacapa==""){

        document.getElementById("txthora").style.background="#EDF98E";
        document.getElementById("txthora").style.borderColor="#000000";

    }else {
        document.getElementById("txthora").style.background="#ffffff";
        document.getElementById("txthora").style.borderColor="#9A9797";
        ingresar++;
   
    }

    if(nomcliente==null || nomcliente.length==0){

        document.getElementById("textnomcliente").style.background="#EDF98E";
        document.getElementById("textnomcliente").style.borderColor="#000000";

    }else {
        document.getElementById("textnomcliente").style.background="#ffffff";
        document.getElementById("textnomcliente").style.borderColor="#9A9797";
        ingresar++;
   
    }



    if(ingresar==8){

        document.getElementById("mostrarid").innerHTML += "<td>" + idasistente + "</td>";
        document.getElementById("mostrarnombre").innerHTML += "<td>" + nomcmpleto + "</td>";
        document.getElementById("mostrarcorreo").innerHTML += "<td>" + correo + "</td>";
        document.getElementById("mostrartelefono").innerHTML += "<td>" + telefono + "</td>";
        document.getElementById("mostrareliminar").innerHTML += "<td>" + '<img  width="25px" src="eliminar.ico"  onclick="eliminarventa()" />' + "</td>";
        document.getElementById("formasistente").reset();

    }else{

        alert("Falta Completar Datos");

    }



}

// funcion para poder ingresar solo numeros
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

//funcion para eliminar una venta
function eliminarventa() {

    var mensaje = confirm("¿Desea Eliminar Un Asistente?")

    if (mensaje) {
    alert("Asistente Eliminado");
    }

    }