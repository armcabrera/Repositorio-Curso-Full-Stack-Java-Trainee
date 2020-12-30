<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
   <title></title>
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
     <script src="validarCrearcapa.js"></script>
    
</head>
	<body>
		<header>
      		<h1>Crear Capacitacion</h1>  
    	</header><br>
    
<div class="row">

	<main class="col-5 col-s-12 main">
	
	
	
	<form  action="Crearcapacitación" method="post" id="formcapa">
	
		<table class="tablalistarcapa" >
	
			<tr class="sinborde">
				<td class="sinborde">Id capacitación</td>
				<td class="sinborde"> <input  type="text" name="txtidcapacitacion" id="txtidcapacitacion" onkeyUp="return ValNumero(this)"  ></td>		
			</tr>
			<tr class="sinborde">
				<td class="sinborde">Fecha</td>
				<td class="sinborde"><input style="width:100%" type="date" name="txtdia" id="txtdia"></td>		
			</tr>
			<tr class="sinborde">
				<td class="sinborde">Hora</td>
				<td class="sinborde"><input style="width:100%" type="time" name="txthoracapa" id="txthoracapa"></td>		
			</tr>
			<tr class="sinborde">
				<td class="sinborde">Lugar</td>
				<td class="sinborde"><input type="text" name="txtlugar" id="txtlugar"></td>		
			</tr>
			<tr class="sinborde">
				<td class="sinborde">Duración</td>
				<td class="sinborde"><input type="text" name ="txtduracion" id="txtduracion"></td>		
			</tr>
			<tr class="sinborde">
				<td class="sinborde">Rut Cliente</td>
				<td class="sinborde">	
				<!-- <input type="text" name ="txtrutcliente" id="txtrutcliente"> -->
				<select  name ="txtrutcliente" id="txtrutcliente">
					 <option selected value="0">seleccione el rut Cliente</option>
					 <c:forEach items="${lrut}" var="clio">
					<option><c:out value="${clio.getRunusuario()}" /></option>
					</c:forEach>
				</select>
				
				
				</td>		
			</tr>
			<tr class="sinborde">
				<td colspan="2" class="sinborde">  <input type="submit" name ="ingresar" value="ingresar" ></td>
			</tr>	
  
	
	
	
		</table>
	</form>
	
	
	</main >
	
	<main class="col-4 col-s-12 main">
	
	
	
		<table class="tablalistarcapa">
		
			<thead>
			<tr>
				<th colspan="2"><h2>Listado de Clientes</h2></th>
			</tr>
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
	
	<main class="col-3 col-s-12 main">
	
		<a href="<%=request.getContextPath() %>/inicio">Inicio</a><br><br>
		<a href="<%=request.getContextPath() %>/listarcapacitaciones">Listar Capacitaciones</a><br><br>
		<a href="<%=request.getContextPath() %>/login_usuario">Crear Usuario</a>
		
	
	</main>

      


  </div>
</body>
</html>