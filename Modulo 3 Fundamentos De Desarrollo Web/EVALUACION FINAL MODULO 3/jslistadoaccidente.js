//funcion para validar el formulario de accidentes

function validaracciden(){

    var idaciidente = document.getElementById("idaccidente").value;
    var fechaacci = document.getElementById("fecaccidente").value;
    var horacci = document.getElementById("txthoracciden").value;
    var lugar = document.getElementById("textlugaracci").value;
    var origen = document.getElementById("textorigen").value;
    var cliente = document.getElementById("txtcliente").value;
    var consecuencias = document.getElementById("textconsecuencias").value;
    var ingresar = 0;
   

    if(idaciidente==0){

        document.getElementById("idaccidente").style.background="#EDF98E";
        document.getElementById("idaccidente").style.borderColor="#000000";

    }else{

        document.getElementById("idaccidente").style.background="#ffffff";
        document.getElementById("idaccidente").style.borderColor="#9A9797";
        ingresar++;

    }

    if(fechaacci.length==0 || fechaacci==null){

        document.getElementById("fecaccidente").style.background="#EDF98E";
        document.getElementById("fecaccidente").style.borderColor="#000000";

    }else {
        document.getElementById("fecaccidente").style.background="#ffffff";
        document.getElementById("fecaccidente").style.borderColor="#9A9797";
        ingresar++;
   
    }


    if(horacci==null || horacci==""){

        document.getElementById("txthoracciden").style.background="#EDF98E";
        document.getElementById("txthoracciden").style.borderColor="#000000";

    }else {
        document.getElementById("txthoracciden").style.background="#ffffff";
        document.getElementById("txthoracciden").style.borderColor="#9A9797";
        ingresar++;
   
    }

    if( lugar==null || lugar.length==0){

        document.getElementById("textlugaracci").style.background="#EDF98E";
        document.getElementById("textlugaracci").style.borderColor="#000000";

    }else{

        document.getElementById("textlugaracci").style.background="#ffffff";
        document.getElementById("textlugaracci").style.borderColor="#9A9797";
        ingresar++;

    }

    if( origen==null || origen.length==0){

        document.getElementById("textorigen").style.background="#EDF98E";
        document.getElementById("textorigen").style.borderColor="#000000";

    }else{

        document.getElementById("textorigen").style.background="#ffffff";
        document.getElementById("textorigen").style.borderColor="#9A9797";
        ingresar++;

    }



    if(cliente == 0){

        document.getElementById("txtcliente").style.background="#EDF98E";
        document.getElementById("txtcliente").style.borderColor="#000000";
        
       
       }else{
           
        document.getElementById("txtcliente").style.background="#ffffff";
        document.getElementById("txtcliente").style.borderColor="#9A9797";
        ingresar++;
      
        }
 



    if(ingresar==6){

        document.getElementById("mostrarid").innerHTML += "<td>" + idaciidente + "</td>";
        document.getElementById("mostrarfecha").innerHTML += "<td>" + fechaacci + "</td>";
        document.getElementById("mostrarhora").innerHTML += "<td>" + horacci + "</td>";
        document.getElementById("mostrarlugar").innerHTML += "<td>" + lugar + "</td>";
        document.getElementById("mostrarorigen").innerHTML += "<td>" + origen + "</td>";
        document.getElementById("mostrarcliente").innerHTML += "<td>" + cliente + "</td>";
        document.getElementById("mostrarconsecuencias").innerHTML += "<td>" + consecuencias + "</td>";
        document.getElementById("formlistacci").reset();

    }else{

        alert("Falta Completar Datos");

    }



}

//funcion para ingresar solo numeros  
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

//funcion eliminar un accidente
function eliminarventa() {

    var mensaje = confirm("¿Desea Eliminar Un accidente?")

    if (mensaje) {
    alert("Accidente Eliminado");
    }

    }