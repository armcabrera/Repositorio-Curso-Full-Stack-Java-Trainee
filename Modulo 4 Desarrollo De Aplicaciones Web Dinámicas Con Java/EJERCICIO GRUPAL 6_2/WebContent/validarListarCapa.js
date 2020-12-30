function validarlogin() {
  var errores = "";
    var user = document.getElementById('txtusuario').value;
    var pass = document.getElementById('txtpassword').value;

    if (user == null || user.length == 0  ){
        errores += "Debe ingresar un usuario"+ '\n';
    }
    else if(user != "admin"){
        errores += "usuario incorrecto"+ '\n';
    }
    if (pass == null || pass.length == 0  ){
        errores += "Debe ingresar una contraseña"+ '\n';
    }
    else if(pass != "1234"){
        errores += "contraseña incorrecta"+ '\n';
    }
    if (user =="admin" & pass=="1234"){
        location ="listarCapacitaciones.jsp"  ;
    }
    else{
        alert(errores)
    }
   
}