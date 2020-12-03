    function mostraranio(){

    var min = 2010;
    var max = 2020;

    select = document.getElementById("anio");

    for(i = min; i<=max; i++)
        var opt = document.write("<option>" + (i+1) + "</option");
        opt.value = i;
        opt.innerHTML = i ;
        select.appendChild(opt);

    }



function fechapago(){

    var f = new Date();
    document.write(f.getDate() + "/" + (f.getMonth() +1) + "/" + f.getFullYear());

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


var botones = document.getElementsByClassName("boton");

for(var i = 0; i < botones.length; i++) {
    botones[i].addEventListener('click', comprueba, false);
}

function comprueba(){
  switch(botones){
    case "boton1":
        alert("presiono 1s");
       break;
    case "boton2":
        alert("presiono 2222s");
       break;
    case "boton3":
        alert("presiono 3333s");
       break;
  }
}

