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
	<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
	    <link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
 	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/eliminardelista.js'></script>
		<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
  <title>Listado de Asesorias</title>

</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
	<header>
  		<h1>Listado De Asesorias</h1>
	</header>
	
	<div class="row">
	
		<main class="main col-10 col-s-12">
		
			<table class="table table-striped centrado">  
			    <thead>
			    <tr>
			      <th>#</th>
			      <th>Fecha Realizacion</th>
			      <th>Motivo</th>
			      <th>Nombre Profesional</th>
			      <th>Rut Profesional</th>
			      <th colspan="2">Acciones</th>
			     </tr>
			    </thead>
    
			     <tbody>
              
               
				
			<c:forEach items="${laseso}" var="ase">
			 <tr>
					<td><c:out value="${ase.getIdasesoria()}" /></td>
					<td><c:out value="${ase.getFecharealizacion()}" /></td>
					<td><c:out value="${ase.getMotivo()}" /></td>
					<td><c:out value="${ase.getProfesional_cargo()}" /></td>	
					<td><c:out value="${ase.getProfesional_run()}" /></td>	
				<td><a href='<c:out value="${pageContext.request.contextPath}"/>/Linkeliminaraseso/<c:out value="${ase.getIdasesoria()}" />' onclick="someFunction6(event);" ><img class="imgeliminar" title="Eliminar Asesoria" src='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/eliminar.ico'></a></td>
 				<td><a href='<c:out value="${pageContext.request.contextPath}"/>/Linkeditaraseso/<c:out value="${ase.getIdasesoria	()}" />'><img class="imgeliminar" title="Modificar Asesoria" src='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/modificar.ico'></a></td>			
			
			</tr>
			</c:forEach>
			
                
              </tbody> 
  			</table>
		
		</main>
	
	<main class="main col-2 col-s-12 alingderecha">
		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkirasesoria'>Ingresar asesoria</a><br><br>
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