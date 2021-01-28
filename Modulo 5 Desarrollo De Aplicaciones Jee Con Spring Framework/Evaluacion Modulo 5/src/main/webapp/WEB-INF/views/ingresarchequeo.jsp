<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Ingresar Chequeo</title>
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
      <header>
		<h1>Ingresar Chequeo</h1>
      </header>
        
      <div class="row" >
        
      	<main class="main col-1 col-s-12"></main>
       	<main class="main col-3 col-s-12">
       
        	<form class="was-validated" action="Linkcrearchequeo" method="post" id="formadmin">
  				
				<label for="validationServer01" class="form-label">Identidicador Del Chequeo</label>
  		  		<input type="text" class="form-control is-valid" id="txtidchequeo" name="txtidchequeo" required>			    
				Ingrese un identificador por favor.<br><br>

				    
				<label for="validationServer01" class="form-label">Implementos Seguridad</label>
					<select class="form-select" required aria-label="select example"  id="txtImplementos" name="txtImplementos" required>
      					<option value="">Estado Chequeo</option>
					    <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>	
    				</select>
    				Seleccione estado del chequeo por favor.<br><br>
    			
    			<label for="validationServer01" class="form-label">Protocolos Seguridad</label>
					<select class="form-select" required aria-label="select example"  id="txtProtocolos" name="txtProtocolos" required>
      					<option value="">Estado Chequeo</option>
					    <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>	
    				</select>
    				Seleccione estado del chequeo por favor.<br><br>
    				
    							<label for="validationServer01" class="form-label">Vestimenta Seguridad</label>
					<select class="form-select" required aria-label="select example"  id="txtVestimenta" name="txtVestimenta" required>
      					<option value="">Estado Chequeo</option>
					     <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>	
    				</select>
    				Seleccione estado del chequeo por favor.<br><br>
    				
    						<label for="validationServer01" class="form-label">Manual Seguridad</label>
					<select class="form-select" required aria-label="select example"  id="txtManual" name="txtManual" required>
      					<option value="">Estado Chequeo</option>
					     <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>	
    				</select>
    				Seleccione estado del chequeo por favor.<br><br>
				     
				    
				 <label for="exampleFormControlTextarea1" class="form-label">Observaciones</label>
  		  		<textarea class="form-control" id="txtobservaciones" name="txtobservaciones" rows="3"></textarea>
				Ingrese observaciones por favor.<br><br>   
	
			      
			    <label for="validationServer04" class="form-label">Id Visita</label>
    				<select class="form-select is-invalid" id="txtidvisita" name="txtidvisita" aria-describedby="validationServer04Feedback" required>
      					<option selected value="0">seleccione un id visita</option>
					 	<c:forEach items="${idvi}" var="idv">
						<option><c:out value="${idv.getIdvisita()}" /></option>
						</c:forEach>
    				</select>		
     				Seleccione un id visita por favor <br><br>
    					    									    
	

				<button class="btn btn-primary tamañoboton" type="submit">Ingresar</button>
					
		</form>
       
     </main>
     
     	<main class="main col-5 col-s-12"></main>
     
 
     <main class="main col-2 col-s-12 alingderecha">
     		     
 			<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistachequeos'>Volver Listado Chequeos</a><br><br><br>	
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