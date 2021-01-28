<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Administrativos</title>
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
  		<h1>Lista de usuarios Tipo Administrativo</h1>
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

		<main class="col-12 col-s-12 main">

			<table class="table table-striped listclientes">
		    	<thead>
			    	<tr>
			      		<th>Rut usuario</th>
			      		<th>Nombre usuario</th>
			      		<th>Apellidos usuario</th>
			      		<th>Correo</th>
			      		<th>Area</th>
			      		<th colspan=2>Acciones</th>
			     	</tr>
		    	</thead>
		
		    <tbody> 
		     <c:forEach items="${admin}" var="adm">
			 <tr>
					<td><c:out value="${adm.getRunusuario()}" /></td>
					<td><c:out value="${adm.getNombre()}" /></td>
					<td><c:out value="${adm.getApellido()}" /></td>
					<td><c:out value="${adm.getCorreo()}" /></td>	
					<td><c:out value="${adm.getArea()}" /></td>	
					<td><a href='<c:out value="${pageContext.request.contextPath}"/>/Linkeliminaradm/<c:out value="${adm.getRunusuario()}" />' onclick="someFunction4(event);" ><img class="imgeliminar" title="Eliminar Administrativo" src='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/eliminar.ico'></a></td>
 					<td><a href='<c:out value="${pageContext.request.contextPath}"/>/Linkeditaradministrativo/<c:out value="${adm.getRunusuario()} " />'><img class="imgeliminar" title="Modificar Administrativo" src='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/modificar.ico'></a></td>		
			</tr>
			</c:forEach>
		</tbody>
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