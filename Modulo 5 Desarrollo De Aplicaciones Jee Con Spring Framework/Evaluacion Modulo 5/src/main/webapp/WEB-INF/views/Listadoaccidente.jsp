<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Accidentes</title>
	  	<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
 		<!-- JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>	
 		<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
	    <link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
		 <script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/eliminardelista.js'></script>
		 	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
		
</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
	<header>
  		<h1>Lista de Accidentes</h1>
	</header>

  	<div class="row">
  
  
  		<main class="main col12 col-s-12">
	  		<ul class="nav justify-content-center">
		  		<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href='<c:out value="${pageContext.request.contextPath}"/>/Linklistausuario'>Volver Listado Usuario</a>
		  		</li>
		    	<li class="nav-item">
		   		<a class="nav-link active" aria-current="page" href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
		  		</li>
			</ul>
  		</main>
  
		<main class="col-10 col-s-12 main">

			<table class="table table-striped listclientes">
			    <thead>
				    <tr>
				      <th>#</th>
				      <th>Fecha Accidente</th>
				      <th>hora Accidente</th>
				      <th>Lugar Accidente</th>
				      <th>Origen Accidente</th>
				      <th>Rut Cliente</th>
				      <th>Consecuencias Accidente</th>
				      <th colspan=2>Acciones</th>
				    </tr>
			    </thead>
		
		    <tbody> 
		     <c:forEach items="${lacci}" var="aci">
			 <tr>
					<td><c:out value="${aci.getAccidenteid()}" /></td>
					<td><c:out value="${aci.getAccifecha()}" /></td>
					<td><c:out value="${aci.getAccihora()}" /></td>
					<td><c:out value="${aci.getAccilugar()}" /></td>	
					<td><c:out value="${aci.getAcciorigen()}" /></td>		
					<td><c:out value="${aci.getCliente_rutcliente()}" /></td>
					<td><c:out value="${aci.getAcciconsecuencia()}" /></td>
					<td><a href='<c:out value="${pageContext.request.contextPath}"/>/Linkeliminaracci/<c:out value="${aci.getAccidenteid()}" />' onclick="someFunction5(event);" ><img class="imgeliminar" title="Eliminar Accidente" src='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/eliminar.ico'></a></td>
 					<td><a href='<c:out value="${pageContext.request.contextPath}"/>/Linkeditaracci/<c:out value="${aci.getAccidenteid()} " />'><img class="imgeliminar" title="Modificar Accidente" src='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/modificar.ico'></a></td>
				
					
			</tr>
			</c:forEach>
			</tbody>
			</table>
		</main>
		
		     <main class="main col-2 col-s-12 alingderecha">
 			<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkaccidentes'>Ingresar Asistente</a><br><br>
        	<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a><br><br>
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