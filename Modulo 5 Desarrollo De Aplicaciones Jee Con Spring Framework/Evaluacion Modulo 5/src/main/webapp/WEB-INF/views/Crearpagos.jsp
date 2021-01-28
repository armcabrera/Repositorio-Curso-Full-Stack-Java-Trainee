<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear Pagos</title>
<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	 <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	
	    <link rel="stylesheet" href="resources/css/Hojaestilos.css">
	    <link rel="icon" href="resources/imagenes/favicon.ico">
  <script type="text/javascript" src='resources/js/javascript.js'></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
 <header>
    <h1>Crear pago</h1>
  </header>
  
  
  <div class="row">
  
  <main class="main col-1 col-s-12"></main>
  
  <main class="main col-3 col-s-12">
  
  <form class="was-validated" action="Linkcrearpagos" method="post" id="formadmin">
  				
				    <label for="validationServer01" class="form-label">Identificador</label>
  		  			<input type="text" class="form-control is-valid" id="txtidpago" name="txtidpago" required>			    
				    Ingrese un identificador por favor.<br><br>

				    
				   	<label for="validationServer01" class="form-label">Fecha Pago</label>
  		  			<input type="Date" class="form-control is-valid" id="txtfechapago" name="txtfechapago" required>
				    Ingrese una Fecha por favor.<br><br>
				    
				    <label for="validationServer01" class="form-label">Monto Pago</label>
  		  			<input type="text" class="form-control is-valid" id="txtmontopago" name="txtmontopago" required>
				    Ingrese una Fecha por favor.<br><br>

				      
				    <label for="validationServer01" class="form-label">Mes</label>
				    	<select class="form-select" required aria-label="select example"  id="txtmespago" name="txtmespago">
      						<option value="">Seleccione Mes</option>
					      	<option value="Enero">Enero</option>
					      	<option value="Febrero">Febrero</option>
					      	<option value="Marzo">Marzo</option>
					      	<option value="Abril">Abril</option>
					      	<option value="Mayo">Mayo</option>
					      	<option value="Junio">Junio</option>
					      	<option value="Julio">Julio</option>
					      	<option value="Agosto">Agosto</option>
					      	<option value="Septiembre">Septiembre</option>
					      	<option value="Octubre">Octubre</option>
					      	<option value="Noviembre">Noviembre</option>
					      	<option value="Diciembre">Diciembre</option>	
    					</select>
    					Seleccione un mes por favor.<br><br>
    					
    									    
				    <label for="validationServer01" class="form-label">Año Pago</label>
  		  			<input type="text" class="form-control is-valid" id="txtañopago" name="txtañopago" 	required>
				    Ingrese un año por favor.<br><br>
				    
				    <label for="validationServer04" class="form-label">Rut Cliente</label>
    				<select class="form-select is-invalid" id="txtrutcliente" name="txtrutcliente" aria-describedby="validationServer04Feedback" required>
      					<option selected value="">seleccione el rut Cliente</option>
					 	<c:forEach items="${lrut}" var="clio">
						<option><c:out value="${clio.getRunusuario()}" /></option>
						</c:forEach>
    				</select>		
     				Seleccione un rut por favor<br><br>
				   
					<button class="btn btn-primary" type="submit">Ingresar</button>
			</form>
  		 </main>
  		 
  		 	<main class="col-5 col-s-12 main">
	
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
  

  
 		<main class="main col-3 col-s-12 alingderecha">
 		
 		<a href="Linklistapagos">Volver Listado Pagos</a><br><br>
  	 
  			<a href="Linkindex">Volver Inicio</a>
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