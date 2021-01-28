<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
   <title></title>
<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	 <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	
	    <link rel="stylesheet" href="resources/css/Hojaestilos.css">
	    <link rel="icon" href="resources/imagenes/favicon.ico">
     <script src="resources/js/validarCrearcapa.js"></script>
      <script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
    
</head>

<a href="<c:url value="/logout" />">Logout</a>
	<body>
	
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
      		<h1>Crear Asesorias</h1>  
    	</header><br>
    
		<div class="row">
		
		 <main class="main col-1 col-s-12"></main>

			<main class= " col-3 col-s-12 main">
			
				<form class="was-validated" action="Linkcrearasesoria" method="post" id="formadmin">
  				
					<label for="validationServer01" class="form-label">Id Asesoria</label>
  		  			<input type="text" class="form-control is-valid" id="txtidasesoria" name="txtidasesoria" 	required>			    
				    Ingrese un identificador por favor.<br><br>

				    
				   	<label for="validationServer01" class="form-label">Fecha Asesoria</label>
  		  			<input type="date" class="form-control is-valid" id="txtdiaase" name="txtdiaase" 	required>
				    Ingrese una fecha por favor.<br><br>

				    
				    <label for="validationServer01" class="form-label">Motivo </label>
  		  			<input type="text" class="form-control is-valid" id="txtmotivo" name="txtmotivo" 	required>
				    Ingrese motivo de asesoria por favor.<br><br>
				      
				      
				     <label for="validationServer04" class="form-label">Rut Profesional</label>
    				<select class="form-select is-invalid" id="txtrutprofesional" name="txtrutprofesional" aria-describedby="validationServer04Feedback" required>
      					<option selected value="">seleccione el rut Cliente</option>
					 	<c:forEach items="${lprofesional}" var="prof">
						<option><c:out value="${prof.getRunusuario()}" /></option>
						</c:forEach>
    				</select>		
     				Seleccione un rut <br><br>

			    
				    <label for="validationServer01" class="form-label">Nombre Profesional</label>
  		  			<input type="text" class="form-control is-valid" id="txtnombrepro" name="txtnombrepro" 	required>
				    Ingrese Nombre por favor.<br><br>
				    
				
	      
				  

					<button class="btn btn-primary" type="submit">Ingresar</button>
					
				</form>		
		</main>
		
		 <main class="main col-1 col-s-12"></main>
	
		<main class="col-5 col-s-12 main">
	
		<h2 class="centrado">Listado de Profesional</h2>
	
			<table class="table table-striped centrado">
		
			<thead>
			<tr>
				<th>Rut Profesional</th>
				<th>Nombre Profesional</th>
			</tr>	
			</thead>
			
			<tbody>
         		<c:forEach items="${lprofesional}" var="prof">	 		
					<tr>
						<td><c:out value="${prof.getRunusuario()}" /></td>
						<td><c:out value="${prof.getNombre()}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	</main>
	
	<main class="col-2 col-s-12 main alingderecha">
 	<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistarasesorias'>Volver Listado Asesorias</a><br><br><br><br>
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