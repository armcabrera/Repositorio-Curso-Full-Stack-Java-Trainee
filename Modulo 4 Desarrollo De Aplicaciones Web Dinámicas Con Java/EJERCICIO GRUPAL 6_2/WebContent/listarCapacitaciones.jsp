<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>Lista capacitaciones</title>
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<header>
  <h1> Lista capacitacion</h1>
</header><br>
    <div class="row">

      <main class="main col-11 col-s-12">

            <table class="tablalistarcapa">
              <thead>
              <tr>
                <th>Id de capacitación</th>
                <th>Rut Cliente</th>
                <th>Dia De La Capacitacion</th>
                <th>Hora De La Capacitación</th>
                <th>Lugar De La Capacitacion</th>
                <th>Duracion De La Capacitacion</th>
                <th>Cantidad De Asistentes</th>
                </tr>
              </thead>
              <tbody>
              
               
				
			<c:forEach items="${capa}" var="lta">
			 <tr>
					<td><c:out value="${lta.getIdcapa()}" /></td>
					<td><c:out value="${lta.getRutclte()}" /></td>
					<td><c:out value="${lta.getDia()}" /></td>
					<td><c:out value="${lta.getHora()}" /></td>
					<td><c:out value="${lta.getLugar()}" /></td>	
					<td><c:out value="${lta.getDuracion()}" /></td>
					<td><c:out value="${lta.getCantasist()}" /></td>		
				</tr>
			</c:forEach>
			
                
              </tbody>
      
          </table>


      </main>
      
      <main class="main col-1 col-s-12">
       
       <p>Sesion de: ${nombresesion} </p>
      
      </main>

      <main class="main col-7 col-s-12">
         
        <p><a href="<%=request.getContextPath() %>/inicio">Inicio</a>
        
        </p>
        
      </main>

      
   
    </div>
</body>
</html>