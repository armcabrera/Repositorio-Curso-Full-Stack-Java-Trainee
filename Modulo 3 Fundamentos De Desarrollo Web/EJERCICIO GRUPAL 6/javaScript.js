function mostrar(){

    var radio = document.getElementsByName("lista");
    var seleccionado = false;
    var texto = document.getElementById("txttexto").value;


    for(var i = 0; i<radio.length; i++){
        if (radio[i].checked){
            seleccionado = true;
            break;
        }
    }

    if(!seleccionado){
        
        alert("Debe seleccionar al menos un radio buton");

    }else if(seleccionado = true && texto == null || texto.length == 0){

        alert("Debe escribir un texto");

    }else if(document.getElementById("radio1").checked && texto.value!=""){

        document.getElementById("listdesor").innerHTML += "<li>" + texto + "</li><br>";

    }else{

        document.getElementById("listorden").innerHTML += "<li type=upper-roman>" + texto + "</li><br>";
    }
        

}