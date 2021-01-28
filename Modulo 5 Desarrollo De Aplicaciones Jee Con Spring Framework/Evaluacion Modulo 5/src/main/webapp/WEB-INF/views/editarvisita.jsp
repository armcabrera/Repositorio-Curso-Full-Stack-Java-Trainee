<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Visita</title>
 <link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
<link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
			<h1>Editar Visita</h1>
		</header>
		
		 <div class="row">
 			<main id="maineditcap" class="main col-10 col-s-12">
		   
		      <form action='<c:out value="${pageContext.request.contextPath}" />/Linkupdatevisita'  method="POST">
		      
		     	  <table class="tablalistarcapa">
		     	  <tr>
		     	  		<td class="sinborde" colspan="2"><h2>Formulario capacitacion</h2></td>
		     	  </tr>
                    <tr class="sinborde">
		     		 <td class="sinborde"> Id Visita</td>
		     		  <td class="sinborde"><c:out value="${editvis.getIdvisita()}"/></td>
		     		 <td class="sinborde"><input type="hidden" name="hdnidvisita" id="hdnidvisita" value="${editvis.getIdvisita()}" /></td>
		     		
		    	 </tr>
		    	 <tr class="sinborde">
		    	   	 <td class="sinborde">Fecha Visita</td>
		      		 <td class="sinborde"><input type="text" name="txtfechavisita" id="txtfechavisita" value="<c:out value="${editvis.getVisfecha()}"/>"></td>
		     	 </tr>
		     	 <tr class="sinborde">
		      		 <td  class="sinborde">Hora Visita</td>
		        	 <td class="sinborde"><input type="time" name="txthoravisita" id="txthoravisita" value="<c:out value="${editvis.getVishora()}"/>"></td>
		        </tr>
		        <tr class="sinborde">
		        	<td  class="sinborde">Lugar Visita</td>
		        	<td  class="sinborde"><input type="text" name="txtlugarhora" id="txtlugarhora" value="<c:out value="${editvis.getVislugar()}"/>"></td>
		        </tr>
		        
		          <tr class="sinborde">
                  	<td class="sinborde"><label>Comentarios</label></td>
                    <td><textarea class="form-control" id="txtcomentarios" name="txtcomentarios" rows="3"><c:out value= "${editvis.getViscomentarios()}"/></textarea></td>
                  </tr>
   
		  		<tr class="sinborde">
		  			<td  class="sinborde">Rut Cliente</td>
		  			<td  class="sinborde"><c:out value="${editvis.getCliente_rutcliente()}"/></td>
		        	<td  class="sinborde"><input type="hidden" name="hdnrutcliente" id="hdnrutcliente" value="${editvis.getCliente_rutcliente()}" /></td>
		  			
		        </tr>
		        <tr class="sinborde">
		        	<td  class="sinborde"><input type="submit" name ="Modificar"  value="Modificar" ></td>
		      	</tr>
		</table>
		      </form>
      
      	</main>
      	
       <main class= " col-2 col-s-12 main">
       		<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistadovisita'>Volver Listado Visita</a><br><br>
 			<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
            </main>
            
         </div>
      
</body>
</html>