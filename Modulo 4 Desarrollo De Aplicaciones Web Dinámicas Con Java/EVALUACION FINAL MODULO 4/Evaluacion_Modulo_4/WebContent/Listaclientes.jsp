<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Clientes</title>
  	<link rel="stylesheet" href="Styles.css">
	<link rel="icon" href="favicon.ico">
</head>
<body>
<header>
  <h1>Lista de usuarios Tipo Cliente</h1>
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
			      <th>AFP</th>
			      <th>Sistema salud</th>
			      <th>Direccion</th>
			      <th>Comuna</th>
			      <th>Edad</th>
			     </tr>
		    </thead>
		
		    <tbody> 
		     <c:forEach items="${clie}" var="cli">
			 <tr>
					<td><c:out value="${cli.getRunusuario()}" /></td>
					<td><c:out value="${cli.getNombre()}" /></td>
					<td><c:out value="${cli.getApellido()}" /></td>
					<td><c:out value="${cli.getTelefono()}" /></td>	
					<td><c:out value="${cli.getAfp()}" /></td>		
					<td><c:out value="${cli.getSalud()}" /></td>
					<td><c:out value="${cli.getDireccion()}" /></td>
					<td><c:out value="${cli.getComuna()}" /></td>
					<td><c:out value="${cli.getEdad()}" /></td>
				
					
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