document.addEventListener("DOMContentLoaded", function() {

    document.getElementById("formeliminar").addEventListener('submit', ConfirmEliminacion); 
  });

	function ConfirmEliminacion(evento) {

		 evento.preventDefault();   
	
        var mensaje = confirm("¿Desea Eliminar la Capacitacion?")

        if (mensaje) {
        this.submit();
        }

        }
