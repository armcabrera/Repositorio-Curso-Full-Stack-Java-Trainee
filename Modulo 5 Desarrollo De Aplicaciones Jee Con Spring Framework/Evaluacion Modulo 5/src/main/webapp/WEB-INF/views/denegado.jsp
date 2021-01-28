<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceso Denegado</title>

		<link rel="stylesheet" href="resources/css/Hojaestilos.css">
	    <link rel="icon" href="resources/imagenes/favicon.ico">

</head>
<body>
	<header>
		<h1></h1>
	</header>
	
	<div class="row">
	
	
	<main class="main col-1 col-s-12"></main>
	
	<main class="main col-6 col-s-12">
	
	       <p><b><sec:authentication property="principal.username"/></b> Usted no tiene permiso para ver este contenido.</p>
        
        <form action="${pageContext.servletContext.contextPath}/Linkindex" method="get">
            <input type="submit" value="Volver inicio"/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
	
	</main>
	
	<main class="main col-5 col-s-12">
	
		<img class="" src="resources/imagenes/accesodenegado.jpg" >		
	
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