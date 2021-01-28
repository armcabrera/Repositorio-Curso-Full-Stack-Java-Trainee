<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Asistente</title>
 <link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
<link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
			<h1>Editar Asistente</h1>
		</header>
		
		 <div class="row">
 			<main id="maineditcap" class="main col-10 col-s-12">
		   
		      <form action='<c:out value="${pageContext.request.contextPath}" />/Linkupdateasistente'  method="POST">
		      
		     	  <table class="tablalistarcapa">
		     	  <tr>
		     	  		<td class="sinborde" colspan="2"><h2>Formulario Asistente</h2></td>
		     	  </tr>
                    <tr class="sinborde">
		     		 <td class="sinborde"> Id Asistente</td>
		     		  <td class="sinborde"><c:out value="${editasis.getIdasistente()}"/></td>
		     		 <td class="sinborde"><input type="hidden" name="hdnidasis" id="hdnidasis" value="${editasis.getIdasistente()}" /></td>
		     		
		    	 </tr>
		    	 <tr class="sinborde">
		    	   	 <td class="sinborde">Nombre Completo</td>
		      		 <td class="sinborde"><input type="text" name="txtnombre" id="txtnombre" value="<c:out value="${editasis.getAsistnombrecompleto()}"/>"></td>
		     	 </tr>
		     	 <tr class="sinborde">
		      		 <td  class="sinborde">Edad</td>
		        	 <td class="sinborde"><input type="text" name="txtedad" id="txtedad" value="<c:out value="${editasis.getAsistedad()}"/>"></td>
		        </tr>
		        <tr class="sinborde">
		        	<td  class="sinborde">Correo</td>
		        	<td  class="sinborde"><input type="text" name="txtcorreo" id="txtcorreo" value="<c:out value="${editasis.getAsistcorreo()}"/>"></td>
		        </tr>
		        <tr class="sinborde">
		        	<td class="sinborde">Telefono</td>
		        	<td class="sinborde"><input type="text" name ="txttelefono" id="txttelefono" value="<c:out value="${editasis.getAsisttelefono()}"/>"></td>
		  		</tr>
		  		<tr class="sinborde">
		  			<td  class="sinborde">IdCapacitacion</td>
		  			<td  class="sinborde"><c:out value="${editasis.getCapacitacion_idcapacitacion()}"/></td>
		        	<td  class="sinborde"><input type="hidden" name="hdnidasis" id="hdnidasis" value="${editasis.getCapacitacion_idcapacitacion()}" /></td>
		  			
		        </tr>
		        <tr class="sinborde">
		        	<td  class="sinborde"><input type="submit" name ="Modificar"  value="Modificar" ></td>
		      	</tr>
		</table>
		      </form>
      
      	</main>
      	
       <main class= " col-2 col-s-12 main">
            		
				<a href="<%=request.getContextPath() %>/inicio">Inicio</a><br><br>
				<a href="<%=request.getContextPath() %>/Listado_de_usuario">Volver a listado de usuario</a><br><br>
            
            </main>
            
         </div>
      
</body>
</html>