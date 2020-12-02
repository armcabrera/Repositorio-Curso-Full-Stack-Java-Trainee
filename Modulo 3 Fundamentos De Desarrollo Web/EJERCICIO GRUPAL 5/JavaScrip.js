function anio(){


    for(x=2010; x<2050; x++){
        document.write("<option>" + parseInt(x+1) + "</option>");
    }

}



function validarpago(){

    var pago = document.getElementById("textmontopago").value;
    var rutcli = document.getElementById("txtrutcliente").value;
    var mes = document.getElementById("mes").value;
    var ani = document.getElementById("anio").value;
    var cont = 0;

    if(isNaN(pago)){
        document.getElementById("textmontopago").style.background="#EDF98E";
        document.getElementById("textmontopago").style.borderColor="#000000";
    } else if(pago==null || pago.length==0 || pago.length >=9){
                    
        document.getElementById("textmontopago").style.background="#EDF98E";
        document.getElementById("textmontopago").style.borderColor="#000000";
        }else {
        document.getElementById("textmontopago").style.background="#ffffff";
        document.getElementById("textmontopago").style.borderColor="#9A9797";
        cont++;
    }


    if (rutcli==null || rutcli.length==0 || rutcli.length >10){
        document.getElementById("txtrutcliente").style.background="#EDF98E";
        document.getElementById("txtrutcliente").style.borderColor="#000000";
        }else {
        document.getElementById("txtrutcliente").style.background="#ffffff";
        document.getElementById("txtrutcliente").style.borderColor="#9A9797";
        cont++;
    }

    if(mes == 0){
        document.getElementById("mes").style.background="#EDF98E";
        document.getElementById("mes").style.borderColor="#000000";
        }else {
        document.getElementById("mes").style.background="#ffffff";
        document.getElementById("mes").style.borderColor="#9A9797";
        cont++;
    }

    if(ani == 0){
        document.getElementById("anio").style.background="#EDF98E";
        document.getElementById("anio").style.borderColor="#000000";
        }else {
        document.getElementById("anio").style.background="#ffffff";
        document.getElementById("anio").style.borderColor="#9A9797";
        cont++;
    }

    if(cont==4){
        alert("Sus Datos Son validos");
    }

    


     
}