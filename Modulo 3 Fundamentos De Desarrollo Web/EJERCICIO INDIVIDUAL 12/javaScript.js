function cambiodivisa(){

    var radio = document.getElementsByName("divisa");
    var seleccionado = false;
    var ingreso = document.getElementById("textingreso").value;
    var result;
    var dolar = 755.80;
    var euro = 913.95;
    var yuan = 115.13 ;
    var pmexicano = 37.66 ;
    var real = 0.0069 ;
    var rupia = 10.25 ;
  
    for(var i = 0; i<radio.length; i++){
        if (radio[i].checked){
            seleccionado = true;
            break;
        }
    }

    if(!seleccionado){
        
        document.getElementById("errores").style.background="#F5B7B1";
        document.getElementById("errores").style.color="#A93226";
        document.getElementById("mensaje").innerHTML="Debe Elegir Una Opcion";

    }else if(seleccionado = true && ingreso == null || ingreso.length == 0){

        document.getElementById("errores").style.background="#F5B7B1";
        document.getElementById("errores").style.color="#A93226";
        document.getElementById("mensaje").innerHTML="Ingrese un valor para cambiar";


    }else if (isNaN(ingreso)){
        document.getElementById("errores").style.background="#F5B7B1";
        document.getElementById("errores").style.color="#A93226";
        document.getElementById("mensaje").innerHTML="Debe ingresar numeros";

    }else if(ingreso <=0){

        document.getElementById("errores").style.background="#F5B7B1";
        document.getElementById("errores").style.color="#A93226";
        document.getElementById("mensaje").innerHTML="el numero debe ser mayor a 0";
    
    }else if(document.getElementById("us").checked){

        result = dolar * parseInt(ingreso);
        document.getElementById("textresultado").value=result;
        document.getElementById("errores").style.background="#D4EFDF";
        document.getElementById("errores").style.color="#196F3D ";
        document.getElementById("mensaje").innerHTML="Esta correcto";

    }else if(document.getElementById("eu").checked){

        result = euro * parseInt(ingreso);
        document.getElementById("textresultado").value=result;
        document.getElementById("errores").style.background="#D4EFDF";
        document.getElementById("errores").style.color="#196F3D ";
        document.getElementById("mensaje").innerHTML="Esta correcto";
    
    }else if(document.getElementById("yu").checked){

        result = yuan * parseInt(ingreso);
        document.getElementById("textresultado").value=result;
        document.getElementById("errores").style.background="#D4EFDF";
        document.getElementById("errores").style.color="#196F3D ";
        document.getElementById("mensaje").innerHTML="Esta correcto";
    
    }else if(document.getElementById("pm").checked){

        result = pmexicano * parseInt(ingreso);
        document.getElementById("textresultado").value=result;
        document.getElementById("errores").style.background="#D4EFDF";
        document.getElementById("errores").style.color="#196F3D ";
        document.getElementById("mensaje").innerHTML="Esta correcto";
    
    }else if(document.getElementById("re").checked){

        result = real * parseInt(ingreso);
        document.getElementById("textresultado").value=result;
        document.getElementById("errores").style.background="#D4EFDF";
        document.getElementById("errores").style.color="#196F3D ";
        document.getElementById("mensaje").innerHTML="Esta correcto";
    
    }else{

        result = rupia * parseInt(ingreso);
        document.getElementById("textresultado").value=result;
        document.getElementById("errores").style.background="#D4EFDF";
        document.getElementById("errores").style.color="#196F3D ";
        document.getElementById("mensaje").innerHTML="Esta correcto";
    } 


   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // if(document.getElementById("us").checked == false || document.getElementById("eu").checked == false|| document.getElementById("yu").checked == false || document.getElementById("pm").checked == false||
    // document.getElementById("re").checked == false || document.getElementById("ru").checked == false){

    //     document.getElementById("errores").style.background="#F5B7B1";
    //     document.getElementById("errores").style.color="#A93226";
    //     document.getElementById("mensaje").innerHTML="Debe Elegir Una Opcion";


    // }

    // if (ingreso == null || ingreso.length == 0){
    //     document.getElementById("errores").style.background="#F5B7B1";
    //     document.getElementById("errores").style.color="#A93226";
    //     document.getElementById("mensaje").innerHTML="Ingrese un valor para cambiar";
    // }else  if (isNaN(ingreso)){
    //     document.getElementById("errores").style.background="#F5B7B1";
    //     document.getElementById("errores").style.color="#A93226";
    //     document.getElementById("mensaje").innerHTML="Debe ingresar numeros";
    // }
    // else{
    //     var ingreso = parseInt(ingreso);
    //     if (ingreso <=0){
    //         document.getElementById("errores").style.background="#F5B7B1";
    //         document.getElementById("errores").style.color="#A93226";
    //         document.getElementById("mensaje").innerHTML="el numero debe ser mayor a 0";
    //     }
    // }


    // if(document.getElementById("us").checked){

    //     result = dolar * parseInt(ingreso);
    //     document.getElementById("textresultado").value=result;
    //     document.getElementById("errores").style.background="#D4EFDF";
    //     document.getElementById("errores").style.color="#196F3D ";
    //     document.getElementById("mensaje").innerHTML="Esta correcto";
    // }
    
    // if(document.getElementById("eu").checked){

    //     result = euro * parseInt(ingreso);
    //     document.getElementById("textresultado").value=result;
    //     document.getElementById("errores").style.background="#D4EFDF";
    //     document.getElementById("errores").style.color="#196F3D ";
    //     document.getElementById("mensaje").innerHTML="Esta correcto";
    // }
    
    // if(document.getElementById("yu").checked){

    //     result = yuan * parseInt(ingreso);
    //     document.getElementById("textresultado").value=result;
    //     document.getElementById("errores").style.background="#D4EFDF";
    //     document.getElementById("errores").style.color="#196F3D ";
    //     document.getElementById("mensaje").innerHTML="Esta correcto";
    // }
    
    // if(document.getElementById("pm").checked){

    //     result = pmexicano * parseInt(ingreso);
    //     document.getElementById("textresultado").value=result;
    //     document.getElementById("errores").style.background="#D4EFDF";
    //     document.getElementById("errores").style.color="#196F3D ";
    //     document.getElementById("mensaje").innerHTML="Esta correcto";
    // }
    
    // if(document.getElementById("re").checked){

    //     result = real * parseInt(ingreso);
    //     document.getElementById("textresultado").value=result;
    //     document.getElementById("errores").style.background="#D4EFDF";
    //     document.getElementById("errores").style.color="#196F3D ";
    //     document.getElementById("mensaje").innerHTML="Esta correcto";
    // }

    // if(document.getElementById("ru").checked){

    //     result = rupia * parseInt(ingreso);
    //     document.getElementById("textresultado").value=result;
    //     document.getElementById("errores").style.background="#D4EFDF";
    //     document.getElementById("errores").style.color="#196F3D ";
    //     document.getElementById("mensaje").innerHTML="Esta correcto";
    // } 

    

} 