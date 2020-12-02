function validarcliente(){
        
    var error = "";

    var nombre = document.getElementById("textnombre").value;
   
   

    if(nombre==null || nombre.length==0 || nombre.length >=8){
        error += "jajajajja<br/>";
        document.getElementById("textnombre").style.background="#EDF98E";
        document.getElementById("textapellidos").style.background="#EDF98E";
        document.getElementById("textdireccion").style.background="#EDF98E";
        document.getElementById("texttelefono").style.background="#EDF98E";
        document.getElementById("textnombre").style.borderColor="#000000"
    }else {
        document.getElementById("textnombre").style.background="#ffffff";
        document.getElementById("textnombre").style.borderColor="#9A9797"
    }     





    if (error == null || error == "" || error.length == 0){
    error = "La validación no arrojó inconvenientes. Felicitaciones! ";
    }


    var mostrar_error = document.getElementById("envio_error");
    mostrar_error.innerHTML = error;

}

