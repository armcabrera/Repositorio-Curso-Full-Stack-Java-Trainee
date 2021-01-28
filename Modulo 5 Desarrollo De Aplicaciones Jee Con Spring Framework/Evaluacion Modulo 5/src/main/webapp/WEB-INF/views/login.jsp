<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio Sesion</title>

 	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	 <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	

	    <link rel="stylesheet" href="resources/css/Hojaestilos.css">
	    <link rel="icon" href="resources/imagenes/favicon.ico">
</head>
<body>

	<header>
	 	<h1>Login</h1>
	 </header>
	 
	 <div class="row">
	 
	 <main class="main col-4 col-s-12">
	 
	  
	 <%
	 String error = (String) request.getAttribute("error");
	 if (error != null && error.equals("true"))
	 {
		 out.println("<h4 style=\"color:red\">Nombre o clave invalidos!!</h4>");
	 }
	 %>
	
	 <form class="was-validated" name='loginForm' action="<c:url value='login' />" method='POST' id="formadmin">
	
				<label for="validationServer01" class="form-label">Usuario:</label>
				<input type="text" class="form-control is-valid" id="username" name="username"	required>	
	
			 	<label for="validationServer01" class="form-label"> Password:</label>
				<input type="password" class="form-control is-valid" id="password" name="password"	required>	
				
				<button class="btn btn-primary" type="submit" name="submit">Ingresar</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn btn-primary" type="reset" name="reset">Reestablecer</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />	
				<a class="ini" href="Linkindex">Inicio</a>
			
	 </form>
	 
	 
	 
	 
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