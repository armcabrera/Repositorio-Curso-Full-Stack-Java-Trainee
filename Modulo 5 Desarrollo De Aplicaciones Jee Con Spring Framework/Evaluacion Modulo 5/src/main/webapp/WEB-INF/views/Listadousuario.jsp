<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	  	<title>listausuarios</title>
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
  <h1>Lista de usuarios</h1>
</header>

  <div class="row">
  
  	<main class="main col12 col-s-12">
	<ul class="nav justify-content-center">
  		<li class="nav-item">
  		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistacliente'>Usuarios Clientes</a> &nbsp; &nbsp; &nbsp; &nbsp;
  		</li>
  		<li class="nav-item">
  		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistaadministrativo'>Usuarios Administrativo</a> &nbsp; &nbsp; &nbsp; &nbsp;
  		</li>
  		<li class="nav-item">
  		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistaprofesional'>Usuarios Profesional</a> &nbsp; &nbsp; &nbsp; &nbsp;
  		</li>
  		<li class="nav-item">
  		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkcrearusuario'>Crear Usuario</a> &nbsp; &nbsp; &nbsp; &nbsp;
  		</li>
    	<li class="nav-item">
   		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
  		</li>
	</ul>
  	</main>
  




  
	<main class="col-12 col-s-12 main" >

		<table class="table table-striped listusuarios">
		    <thead>
			    <tr>
			      <th>Rut usuario</th>
			      <th>Nombre usuario</th>
			      <th>Apellidos usuario</th>
			      <th>Fecha Nacimiento</th>
			      <th>Tipo de usuario</th>
			     </tr>
		    </thead>
		
		    <tbody> 
		     <c:forEach items="${usua}" var="use">
			 <tr>
					<td><c:out value="${use.getRun()}" /></td>
					<td><c:out value="${use.getNombre()}" /></td>
					<td><c:out value="${use.getApellido()}" /></td>
					<td><c:out value="${use.getFechanacimiento()}" /></td>	
					<td><c:out value="${use.getTipousuario()}" /></td>		
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