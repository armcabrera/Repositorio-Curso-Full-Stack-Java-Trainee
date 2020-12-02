    function showData(){

    var seleccionarid = document.getElementById("selectventa");
    var selectproducto = document.getElementById("selectproducto");
    var selectcantidad = document.getElementById("textcantidad");
    var insertar = 0;

    if(seleccionarid.value !=0){

        insertar++;
        
    }else{

        alert("Debe seleccionar un ID");
    }



   if(selectproducto.value != 0){

    insertar++;
   
   }else{
       
        alert("Debe seleccionar un producto");
    }

   
    if(selectcantidad.value <=0 || selectcantidad.value >= 1001){

        alert("La Cantidad debe se minimo 1 - maximo 1000");

    }else{
        insertar++;
    }


    if(insertar == 3){

        document.getElementById("Mostrarid").innerHTML += "<td>" + seleccionarid.value + "</td></br>";
        document.getElementById("mostrarproducto").innerHTML += "<td>" + selectproducto.value + "</td></br>";
        document.getElementById("mostrarcantidad").innerHTML += "<td>" + selectcantidad.value + "</td></br>";
        selectproducto.options[selectproducto.selectedIndex].style.display = "none";
        document.ready = document.getElementById("selectproducto").value = '0';
        
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