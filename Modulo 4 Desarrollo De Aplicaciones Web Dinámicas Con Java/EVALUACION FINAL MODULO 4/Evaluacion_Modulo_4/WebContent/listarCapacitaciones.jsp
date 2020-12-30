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
     <script src="mostraredicapa.js"></script>
</head>
<body>
<header>
  <h1> Lista capacitacion</h1>
</header><br>
    <div class="row">

      <main class="main col-9 col-s-12">

            <table class="tablalistarcapa">
              <thead>
              <tr>
                <th>Id de capacitación</th>
                <th>Dia De La Capacitacion</th>
                <th>Hora De La Capacitación</th>
                <th>Lugar De La Capacitacion</th>
                <th>Duracion De La Capacitacion</th>
                <th>Eliminar</th>
                <th>Modificar</th>
                </tr>
              </thead>
              <tbody>
              
               
				
			<c:forEach items="${capa}" var="lta">
			 <tr>
					<td><c:out value="${lta.getIdcapa()}" /></td>
					<td><c:out value="${lta.getDia()}" /></td>
					<td><c:out value="${lta.getHora()}" /></td>
					<td><c:out value="${lta.getLugar()}" /></td>	
					<td><c:out value="${lta.getDuracion()}" /></td>		
					<td><a href="eliminarCapacitacion?idcapa=<c:out value="${lta.getIdcapa()}" />">Eliminar</a></td>
					<td><a href="EditarCapacitacion?idcapa=<c:out value="${lta.getIdcapa()}" />">Editar</a></td>
					<%-- <td><input type="radio" name="editradio" id="editradio" onchange="showeditcap()" value="<c:out value="${lta.getIdcapa()}" />"></td> --%>
					
			</tr>
			</c:forEach>
			
                
              </tbody> <!-- <img width="30px" src="eliminar.ico" alt=""  onclick="ConfirmEliminacion()"> -->
      
          </table>


      </main>
      
    


      <main class="main col-3 col-s-12">
         
        <a href="<%=request.getContextPath() %>/inicio">Inicio</a><br><br>
         <a href="<%=request.getContextPath() %>/Crearcapacitación">Crear Capacitacion</a>
        
        
        
      </main>

      
   
    </div>
</body>
</html>