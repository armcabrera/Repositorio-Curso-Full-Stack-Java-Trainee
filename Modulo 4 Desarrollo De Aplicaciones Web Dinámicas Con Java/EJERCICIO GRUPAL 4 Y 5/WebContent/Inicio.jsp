<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	  <title>Asesoría prevención riesgo</title>
	    <link rel="icon" href="images/favicon.ico">
	    <link rel="stylesheet" href="Styles.css">
	    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
	
	<body>
        <div class="todo" id="todoo">
        
       
       <p>Sesion de: ${nombresesion} </p>
       <form method="post" action="cerrarsesion"> <input type="submit" value="Cerrar Sesion" id="Cerrar"></form>
     
     

            <header>
               <h1  class="subrayar">Sistema de información</h1>
               <br>
            </header>
         
            <div class="dropdownshow">

                <a class="btn btn-secondary dropdown-toggle" href="verificarsesion" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">MENU</a>
                
           
     
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">

                
                    <a class="dropdown-item" href="login.html"><FONT SIZE=6>Login</FONT></a>
                    <a class="dropdown-item" href="<%=request.getContextPath() %>/Contacto"><FONT SIZE=6>Contacto</FONT></a>
                    <a class="dropdown-item" href="<%=request.getContextPath() %>/Crearcapacitación"><FONT SIZE=6>Crear capacitación</FONT> </a>
                    <a class="dropdown-item" href="reportes.html"><FONT SIZE=6>Reportes</FONT></a>
                    <a class="dropdown-item" href="crearusuario.html"><FONT SIZE=6>Crear usuarios</FONT></a>
                    <a class="dropdown-item" href="administradoraasistentes.html"><FONT SIZE=6>Administrar asistentes</FONT></a>
                    <a class="dropdown-item" href="<%=request.getContextPath() %>/listarcapacitaciones"><FONT SIZE=6>Lista de capacitaciones</FONT></a>
                    <a class="dropdown-item" href="listadousuarios.html"><FONT SIZE=6>Lista de usuarios</FONT></a>
                    <a class="dropdown-item" href="listadovisitas.html"><FONT SIZE=6>Lista de visitas</FONT></a>
                    <a class="dropdown-item" href="listadopago.html"><FONT SIZE=6>Lista de pago</FONT></a>
                    <a class="dropdown-item" href="listadoasesoria.html"><FONT SIZE=6>Lista de asesoría</FONT></a>
                    <a class="dropdown-item" href="listaaccidente.html"><FONT SIZE=6>Lista de accidentes</FONT></a>
                    <a class="dropdown-item" href="listaaccidente.html"><FONT SIZE=6>Cerrar Sesion</FONT></a>

                </div>
            
                
            </div>
     
            <hr>
     
            <div class="p1">
            
                <h2 class="subrayar">Objetivo del sistema de información</h2>
            
                <p>El objetivo de este sistema de información está enfocado en ayudar a resolver problemas como información dispersa<br>
                y gestión de clientes, potencia la satisfacción del cliente y la mejora de la eficiencia,<br>
                implementando un SISTEMAS DE GESTIÓN DE LA CALIDAD. <br>
                Lo ayudamos a que su empresa logre implementar una estrategia integral tendiente al desarrollo sustentable. <br>
                </p><br>
                <img class="fot1" src="foto1.jpg" alt="foto1.jpg">
            </div>
     
            <div class="p2">

                <h2 class="subrayar">Quienes deberían usarlo</h2>
            
                <p>Está enfocado a profesionales, ejecutivos, clientes, jefaturas y administrativos.<br>
                Principalmente quienes tengan personal a cargo.</p>
                <img class="fot2" src="foto2.jpg" alt="foto2.jpg">

            </div>
     
            <div class="p3">
                <h2 class="subrayar">Procesos considerados</h2>
            
                <ol>
                    <li><p>Agenda<p></li>
                    <li><p>Levantamiento de procesos</p></li>
                    <li><p>Programación de capacitaciones </p></li>
                    <li><p>Entregar información</p></li>
                </ol>
                
            </div>
     
     
     
            <div class="contacti" id="contactis">
                <h2>Contacto</h2>
                <h3>Si desea mayor información.</h3>
                <a class="btn" href="Contacto.jsp">CONTACTENOS</a>
            </div>

        </div>

     </body>


</html>