<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	 <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="resources/css/Hojaestilos.css">
	<link rel="icon" href="resources/imagenes/favicon.ico">
  	<script src="resources/js/javascript.js"></script>
  		<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>

  	<title>Ingresar Asistente</title>
 
</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
	<header>
  		<h1>Ingresar Asistente</h1>
	</header>
	
	<div class="row">
	
		<main class="main col-1	 col-s-12"></main>
	
		<main class="main col-4 col-s-12">
	
			<h2 class="centrado">Ingrese un nuevo asistente</h2>
			
			<form class="was-validated" action="Linkcrearasistente" method="post" id="formadmin">
  				
				<label for="validationServer01" class="form-label">Identidicador Del Asistente</label>
  		  		<input type="text" class="form-control is-valid" id="txtidasistente" name="txtidasistente" 	required>			    
				Ingrese un identificador por favor.<br><br>
				      
				<label for="validationServer01" class="form-label">Nombre Completo</label>
  		  		<input type="text" class="form-control is-valid" id="txtnombre" name="txtnombre" 	required>
				Ingrese un nombre completo por favor.<br><br>
				      
				<label for="validationServer01" class="form-label">Edad</label>
  		  		<input type="text" class="form-control is-valid" id="txtedad" name="txtedad"	required>
				Ingrese una edad por favor.<br><br>
				      
				<label for="validationServer01" class="form-label">Email</label>
  		  		<input type="email" class="form-control is-valid" id="txtemail" name="txtemail"	required>
				Ingrese un email por favor.<br><br>
				      
				<label for="validationServer01" class="form-label">Telefono</label>
  		  		<input type="text" class="form-control is-valid" id="txttelefono" name="txttelefono"	required>
				Ingrese un telefono por favor.<br><br>

			   	<label for="validationServer01" class="form-label">Id Capacitacion</label>
  		  		<input type="text" class="form-control is-valid" id="txtidcapa" name="txtidcapa"	required>
				Seleccione un id-capacitacion por favor.<br><br>
				      

				<button class="btn btn-primary tamañoboton" type="submit">Ingresar</button>
					
		</form>
	</main>
	
	<main class="main col-5	 col-s-12"></main>
	
	<main class="main col-2 col-s-12 alingderecha">
		<a href="Linklistadoasis">Listado De Asistentes</a><br><br>
		<a href="Linkindex">Volver a Inicio</a>
	
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