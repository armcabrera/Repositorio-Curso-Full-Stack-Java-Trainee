<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>listado Chequeos Por Visita</title>
 	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	
		<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
	    <link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
	    	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
   
</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
	<header>
  		<h1>Listado Chequeos Por Visita</h1>
	</header>
	
	<div class="row">
	
	<main class="main col-1 col-s-12"></main>

		<main class="main col-9 col-s-12">
	
			<h2 class="centrado">Listado de Chequeos</h2>
	
	 		<table class="table table-striped centrado">
				<thead>
                	<tr class="mayuscula">
                		
	                    <th>Implementos Seguridad</th>
	                    <th>Protocolos Seguridad</th>
	                    <th>Vestimenta Seguridad</th>
	                    <th>Manual Seguridad</th>
                	</tr>
        		</thead>
        		
        		 <tbody>
		
			
			 <tr>
					
					<td><c:out value="${chvi.getImplementoseguridad()}" /></td>
					<td><c:out value="${chvi.getProtocoloseguridad()}" /></td>
					<td><c:out value="${chvi.getVestimentaseguridad()}" /></td>	
					<td><c:out value="${chvi.getManualseguridad()}" /></td>
			</tr>
		
			
                
              </tbody> 
          </table>
	
	</main>

	
	<main class="main col-2 col-s-12 alingderecha">
 		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistadovisita'>Volver Listado Visitas</a><br><br>
 		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
	
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