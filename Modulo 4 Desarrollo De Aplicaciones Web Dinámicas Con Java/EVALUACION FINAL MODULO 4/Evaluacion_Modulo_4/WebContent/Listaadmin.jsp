<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Administrativos</title>
<link rel="stylesheet" href="Styles.css">
	<link rel="icon" href="favicon.ico">
</head>
<body>
<header>
  <h1>Lista de usuarios Tipo Administrativo</h1>
</header>

  <div class="row">

	<main id="mainusu" class="col-10 col-s-12 main" >

		<table class="tablalistarcapa">
		    <thead>
			    <tr>
			      <th>Rut usuario</th>
			      <th>Nombre usuario</th>
			      <th>Apellidos usuario</th>
			      <th>Correo</th>
			      <th>Area</th>
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