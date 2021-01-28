<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	  <title>listausuarios</title>
	  <link rel="stylesheet" href="Styles.css">
	  <link rel="icon" href="favicon.ico">

	</head>
<body>
<header>
  <h1>Lista de usuarios</h1>
</header>

  <div class="row">
  
  	<main class= " col-2 col-s-12 main">
        <a href="<%=request.getContextPath() %>/Listadoclientes">Lista usuario Clientes</a><br><br>
    </main>
    
     <main class= " col-3 col-s-12 main">
        <a href="<%=request.getContextPath() %>/Listadoadmin">Lista usuario Administrativo</a><br><br>
    </main>
    
     <main class= " col-3 col-s-12 main">
        <a href="<%=request.getContextPath() %>/Listadoprof">Lista usuario Profesional</a><br><br>
    </main>
    
   	<main class="col-2 col-s-12 main">
   		<a href="<%=request.getContextPath() %>/Crear_usuariocli">Crear usuario</a><br><br>
   		
   </main>
   
   <main class="col-2 col-s-12 main">

   		<a href="<%=request.getContextPath() %>/inicio">Volver Inicio</a>
   </main>


  
	<main id="mainusu" class="col-10 col-s-12 main" >

		<table class="tablalistarcapa">
		    <thead>
			    <tr>
			      <th>Rut usuario</th>
			      <th>Nombre usuario</th>
			      <th>Apellidos usuario</th>
			      <th>Fecha Nacimiento</th>
			      <th>Tipo de usuario</th>
			      <th>Eliminar</th>
			      <th>Modificar</th>
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
					<td><a href="eliminarUsuario?run=<c:out value="${use.getRun()}" />">Eliminar</a></td>
                <td><a href="Editarusuario?run=<c:out value="${use.getRun()}" />&&tipo=<c:out value="${use.getTipousuario()}" />">Editar</a></td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</main>
</div>
</body>
</html>