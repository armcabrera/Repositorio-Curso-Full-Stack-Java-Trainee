document.addEventListener("DOMContentLoaded", function() {

    document.getElementById("formadmin").addEventListener('submit', validaradmin); 
  });
  
  function validaradmin(evento) {
  
    evento.preventDefault();
    
	var ingresar = 0;
	var rut = document.getElementById('textrunusuario').value;
	
	 if(rut  == null || rut.length==0) {
        document.getElementById("textrunusuario").style.background="#EDF98E";
        document.getElementById("textrunusuario").style.borderColor="#000000";

    }else{

        document.getElementById("textrunusuario").style.background="#ffffff";
        document.getElementById("textrunusuario").style.borderColor="#9A9797";
        ingresar++;

    }
    
    if(ingresar==1){

        alert("Administrativo Creado");
        this.submit();
    }else{
        alert("Debe ingresar datos requeridos");
    }
	
	}