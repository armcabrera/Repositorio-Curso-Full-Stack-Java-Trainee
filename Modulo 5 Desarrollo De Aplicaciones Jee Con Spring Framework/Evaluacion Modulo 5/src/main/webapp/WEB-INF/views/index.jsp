<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	  <title>Asesoría prevención riesgo</title>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		 
		<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
	    <link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
	    
	     <script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
	</head>
	
	<body>
	
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
			<header>
        	<h1>Sistema De Información</h1>
        </header>
		
		<div class="row">

			<main class="main col-12 col-s-12 dropdown">
			
				  <a class="btn btn-secondary dropdown-toggle menu" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-expanded="false">Menu</a>
					<div class="dropdown-menu menu col-3" aria-labelledby="dropdownMenuLink">	
						  <a class="dropdown-item" href="Linkcontacto">Contacto</a>
						  <a class="dropdown-item" href="Linklistausuario">Lista De Usuarios</a>
						  <a class="dropdown-item" href="Linklistarcapa">Lista De Capacitaciones</a>
						  <a class="dropdown-item" href="Linkircapa">Ingresar Capacitación</a>
						  <a class="dropdown-item" href="Linklistapagos">Listado De Pagos</a>
						  <a class="dropdown-item" href="Linklistarasesorias">Lista De Asesorias</a>
						  <a class="dropdown-item" href="Linklistaracci">Listado Accidente</a>
						  <a class="dropdown-item" href="Linklistadovisita">Ingresar a Visitas</a>
						  <a class="dropdown-item" href="Linklistachequeos">Listado Chequeos</a>
						  <a class="dropdown-item" href="Linklistadoasis">Listado de Asistentes</a>
						  <a class="dropdown-item" href="Linkreportes">Reportes</a>			  
					  </div>
			</main>
			
			<main class="main col-8 col-s-12 primermain">
            
                <h2>Objetivo del sistema de información</h2><br><br>
            
                <p>El objetivo de este sistema de información está enfocado en ayudar a resolver problemas como información dispersa
                y gestión de clientes, potencia la satisfacción del cliente y la mejora de la eficiencia,
                implementando un SISTEMAS DE GESTIÓN DE LA CALIDAD. <br>
                Lo ayudamos a que su empresa logre implementar una estrategia integral tendiente al desarrollo sustentable. <br>
                </p><br>
			
			</main>
			
			<main class="main col-4 col-s-12 primermain">			
				 <img class="foto1index" src="resources/imagenes/foto1.jpg" alt="resources/imagenes/foto1.jpg">			
			</main>
			
			
			<main class="main col-4 col-s-12 segundomain">		
			   <img class="foto2index" src="resources/imagenes/foto2.jpg" alt="resources/imagenes/foto2.jpg">		 		
			</main>
				
			<main class="main col-8 col-s-12 segundomain alingderecha">
			
			<h2>Quienes deberían usarlo</h2><br><br>
            
                <p class="alingderecha">Está enfocado a profesionales, ejecutivos, clientes, jefaturas y administrativos.<br>
                Principalmente quienes tengan personal a cargo.</p>
             
			
			</main>
			
			<main class="main col-6 col-s-12">	
			   <h2 class="subrayar">Procesos considerados</h2>
            
                <ol>
                    <li><p>Agenda<p></li>
                    <li><p>Levantamiento de procesos</p></li>
                    <li><p>Programación de capacitaciones </p></li>
                    <li><p>Entregar información</p></li>
                </ol>		
			</main>
			

			<main class="main col-6 col-s-12 alingderecha">	
			
			<h2>Para mayor información<br>
			Contactar a traves de:</h2>
			

				
				<table  class="listcontactos contactos">
				<tr>
				<td><img width="30px" src="resources/imagenes/formulario.ico" alt=""></td>
				<td><a href="Linkcontacto">Formulario Consulta</a></td>
				</tr>
				<tr>
				<td><img width="30px" src="resources/imagenes/instagram.ico" alt=""></td>
				<td><a href="https://www.instagram.com/">Instagram</a></td>
				</tr>
				<tr>
				<td><img width="30px" src="resources/imagenes/facebook.ico" alt=""></td>
				<td><a href="https://es-la.facebook.com/">Facebook</a></td>
				</tr>
				<tr>			
				<td><img width="30px" src="resources/imagenes/whatsapp.ico" alt=""></td>
				<td><p>+56948615874</p></td>
				</tr>
				
				</table>
			
            </main> 
            
            
  
            
            </div>
               
            <footer style="height: 150px; overflow: hidden;">
            
            <svg viewBox="0 0 500 150" preserveAspectRatio="none" 
            style="height: 100%; width: 100%;">
            <path d="M-4.28,3.26 C150.00,150.00 363.65,-95.43 500.00,49.99 L500.00,150.00 L0.00,150.00 Z" 
            style="stroke: none; fill:  rgb(0, 173, 181);"></path></svg>
            
            
            </footer>
     
            
  

   
     </body>


</html>