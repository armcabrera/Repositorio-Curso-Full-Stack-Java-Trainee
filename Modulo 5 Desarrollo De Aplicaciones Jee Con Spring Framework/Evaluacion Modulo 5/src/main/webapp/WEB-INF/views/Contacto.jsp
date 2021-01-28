<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	 <title>contacto</title>
	 	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	 <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	
	    <link rel="stylesheet" href="resources/css/Hojaestilos.css">
	    <link rel="icon" href="resources/imagenes/favicon.ico">
	   	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
	</head>
	<body>

		<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
	
	 <header>
	 	<h1>Ingresar Una Consulta</h1>
	 </header>
	    
	 <div class="row">
	 
	 	<main class="main col-4 col-s-12"></main>
	 
	 	<main class="main col-4 col-s-12">
	 	
	 	  <form class="was-validated" action="Linkcrearcont" method="post" id="formadmin">
  				
  					<label for="validationServer01" class="form-label">Identificador</label>
  		  			<input type="text" class="form-control is-valid" id="txtidcontacto" name="txtidcontacto"	required>			    
				    Ingrese un identificador por favor.<br><br>
				    
				    <label for="validationServer01" class="form-label">Nombre</label>
  		  			<input type="text" class="form-control is-valid" id="txtnombre" name="txtnombre"	required>			    
				    Ingrese un nombre por favor.<br><br>

				    	    <label for="validationServer01" class="form-label">Correo</label>
  		  			<input type="email" class="form-control is-valid" id="txtemail" name="txtemail"	required>
				    Ingrese un correo por favor.<br><br>
				    
				   	<label for="validationServer01" class="form-label">Telefono</label>
  		  			<input type="text" class="form-control is-valid" id="txttelefono" name="txttelefono"	required>
				    Ingrese un telefono por favor.<br><br>
				      
			

				  	<label for="validationServer01" class="form-label">Tipo Usuario</label>
				    <select class="form-select" required aria-label="select example" name="txttipousuario">
      					<option value="">Seleccione Tipo Usuario</option>
					    <option id="cli1" value="Cliente">Cliente</option>
	                	<option id="cli2" value="Administrativo">Administrativo</option>
	                	<option id="cli3" value="Profesional">Profesional</option>	
    				</select>
    				Seleccione un Tipo De Usuario por favor.<br><br>
    					
    				<label for="exampleFormControlTextarea1" class="form-label">Comentarios</label>
  		  			<textarea class="form-control" id="txtcomentarios" name="txtcomentarios" rows="3"></textarea>
				    Ingrese un comentario por favor.<br><br>		   

				    <button class="btn btn-primary" type="submit">Ingresar</button>
					
						</form>
			</main>
			
		<main class="main col-4 col-s-12 alingderecha">
		 	<a class="ini" href="Linklistaconsulta">Listado Consultas</a><br><br>
  			<a class="ini" href="Linkindex">Inicio</a>
		
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