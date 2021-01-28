<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar asesorias</title>
 <link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
<link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
			<h1>Editar Asesorias</h1>
		</header>
		
		 <div class="row">
 			<main id="maineditcap" class="main col-10 col-s-12">
		   
		      <form action='<c:out value="${pageContext.request.contextPath}" />/Linkupdatease'  method="POST">
		      
		     	  <table class="tablalistarcapa">
		     	  <tr>
		     	  		<td class="sinborde" colspan="2"><h2>Formulario asesoria</h2></td>
		     	  </tr>
                    <tr class="sinborde">
		     		 <td class="sinborde"> Id Asesoria</td>
		     		 <td class="sinborde"><input type="text" name="hdnidase" id="hdnidase" value="<c:out value="${Editase.getIdasesoria()}"/>"readonly></td>
		     		
		    	 </tr>
		    	 <tr class="sinborde">
		    	   	 <td class="sinborde">Fecha Asesoria</td>
		      		 <td class="sinborde"><input type="date" name="txtfecha" id="txtfecha" value="<c:out value="${Editase.getFecharealizacion()}"/>"></td>
		     	 </tr>
		     	 <tr class="sinborde">
		      		 <td  class="sinborde">Motivo </td>
		        	 <td class="sinborde"><input type="text" name="txtmotivo" id="txtmotivo" value="<c:out value="${Editase.getMotivo()}"/>"></td>
		        </tr>
		      
		  		<tr class="sinborde">
		  			<td  class="sinborde">Rut Profesional</td>
		  			<%-- <td  class="sinborde"><c:out value="${Editase.getProfesional_run()}"/></td> --%>
		        	<td  class="sinborde"><input type="text" name="hdnrutprof" id="hdnrutprof" readonly value="${Editase.getProfesional_run()}" /></td>
		  			
		        </tr>
		         <tr class="sinborde">
		        	<td class="sinborde">Nombre profesional</td>
		        	<td class="sinborde" ><input type="text" name ="txtnombreprof" id="txtnombreprof" value="<c:out value="${Editase.getProfesional_cargo()}"/>" readonly></td>
		  		</tr>
		        
		        <tr class="sinborde">
		        	<td  class="sinborde"><input type="submit" name ="Modificar"  value="Modificar" ></td>
		      	</tr>
		</table>
		      </form>
      
      	</main>
      	
       <main class= " col-2 col-s-12 main">
            		
				<a href="<%=request.getContextPath() %>/Linkindex">Inicio</a><br><br>
				<a href="<%=request.getContextPath() %>/Linklistarasesorias">Volver a listado de Asesorias</a><br><br>
            
            </main>
            
         </div>
      
</body>
</html>