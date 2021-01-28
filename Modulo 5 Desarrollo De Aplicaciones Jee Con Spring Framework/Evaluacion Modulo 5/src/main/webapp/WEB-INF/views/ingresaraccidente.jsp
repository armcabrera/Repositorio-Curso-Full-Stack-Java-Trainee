<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Ingresar Accidente</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	 <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="resources/css/Hojaestilos.css">
	    <link rel="icon" href="resources/imagenes/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://jqueryvalidation.org/files/dist/jquery.validate.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>

</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
      <header>
		<h1>Ingresar de accidente</h1>
      </header>
        
      <div class="row" >
        
      	<main class="main col-1 col-s-12"></main>
       	<main class="main col-3 col-s-12">
       
        	<form class="was-validated" action="Linkcrearacci" method="post" id="formadmin">
  				
				<label for="validationServer01" class="form-label">Identidicador Del Accidente</label>
  		  		<input type="text" class="form-control is-valid" id="txtidacci" name="txtidacci" required>			    
				Ingrese un identificador por favor.<br><br>

				    
				<label for="validationServer01" class="form-label">Fecha Del Accidente</label>
  		  		<input type="date" class="form-control is-valid" id="txtfechaacc" name="txtfechaacc"	required>
				Ingrese una fecha por favor.<br><br>
				      
				<label for="validationServer01" class="form-label">Hora Del Accidente</label>
  		  		<input type="time" class="form-control is-valid" id="txthoracci" name="txthoracci"	required>
				Ingrese una hora por favor.<br><br>
				      
				<label for="validationServer01" class="form-label">Lugar Del Accidente</label>
  		  		<input type="text" class="form-control is-valid" id="txtlugaracc" name="txtlugaracc"	required>
				Ingrese un lugar por favor.<br><br>
				      
				<label for="validationServer01" class="form-label">Origen Del Accidente</label>
  		  		<input type="text" class="form-control is-valid" id="txtorigenacc" name="txtorigenacc"	required>
				Ingrese el origen por favor.<br><br>
			      
			    <label for="validationServer04" class="form-label">Rut Cliente</label>
    				<select class="form-select is-invalid" id="txtrutcliente" name="txtrutcliente" aria-describedby="validationServer04Feedback" required>
      					<option selected value="">seleccione el rut Cliente</option>
					 	<c:forEach items="${lrut}" var="clio">
						<option><c:out value="${clio.getRunusuario()}" /></option>
						</c:forEach>
    				</select>		
     				Seleccione un rut <br><br>
    					    									    
				<label for="exampleFormControlTextarea1" class="form-label">Consecuencias</label>
  		  		<textarea class="form-control" id="txtconsecuencias" name="txtconsecuencias" rows="3"></textarea>
				Ingrese comentarios por favor.<br><br>

				<button class="btn btn-primary tamañoboton" type="submit">Ingresar</button>
					
		</form>
       
     </main>
     
     	<main class="main col-1 col-s-12"></main>
     
     <main class="main col-4 col-s-12">
     
     <h2 class="centrado">Listado de Clientes</h2>
	
			<table class="table table-striped centrado">
		
			<thead>
			<tr>
				<th>Rut Clientes</th>
				<th>Nombre Clientes</th>
			</tr>	
			</thead>
			
			<tbody>
         		<c:forEach items="${lrut}" var="clio">	 		
					<tr>
						<td><c:out value="${clio.getRunusuario()}" /></td>
						<td><c:out value="${clio.getNombre()}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
     
     </main>
     <main class="main col-2 col-s-12 alingderecha">
     		     
 			<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistaracci'>Volver Listado Asistente</a><br><br><br>	
        	<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a><br><br>

     </main>
     <main class="main col-1 col-s-12"></main>
    
     </div>
        
      <footer style="height: 150px; overflow: hidden;">  
      <svg viewBox="0 0 500 150" preserveAspectRatio="none" 
      style="height: 100%; width: 100%;">
      <path d="M-4.28,3.26 C150.00,150.00 363.65,-95.43 500.00,49.99 L500.00,150.00 L0.00,150.00 Z" 
      style="stroke: none; fill:  rgb(0, 173, 181);"></path></svg>
  	  </footer>
</body>
</html>