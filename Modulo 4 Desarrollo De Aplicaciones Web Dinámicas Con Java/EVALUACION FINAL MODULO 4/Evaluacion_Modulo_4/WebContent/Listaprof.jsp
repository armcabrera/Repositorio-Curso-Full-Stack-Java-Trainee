<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listada Profesionales</title>
<link rel="stylesheet" href="Styles.css">
	<link rel="icon" href="favicon.ico">
</head>
<body>
<header>
  <h1>Lista de Usuarios Tipo Profesional</h1>
</header>

  <div class="row">

	<main id="mainusu" class="col-10 col-s-12 main" >

		<table class="tablalistarcapa">
		    <thead>
			    <tr>
			      <th>Rut usuario</th>
			      <th>Nombre usuario</th>
			      <th>Apellidos usuario</th>
			      <th>Telefono</th>
			      <th>Titulo</th>
			      <th>Proyecto</th>
			     </tr>
		    </thead>
		
		    <tbody> 
		     <c:forEach items="${profe}" var="pro">
			 <tr>
					<td><c:out value="${pro.getRunusuario()}" /></td>
					<td><c:out value="${pro.getNombre()}" /></td>
					<td><c:out value="${pro.getApellido()}" /></td>
					<td><c:out value="${pro.getTelefono()}" /></td>	
					<td><c:out value="${pro.getTitulo()}" /></td>
					<td><c:out value="${pro.getProyecto()}" /></td>					
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</main>
	
	   
   <main class="col-2 col-s-12 main">
		<a href="<%=request.getContextPath() %>/Listado_de_usuario">Volver Listado Usuario</a><br><br><br>
   		<a href="<%=request.getContextPath() %>/inicio">Volver Inicio</a>
   </main>
	

</div>
</body>
</html>