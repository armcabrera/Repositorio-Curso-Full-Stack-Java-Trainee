<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Pago</title>
 <link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
<link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
			<h1>Editar Pago</h1>
		</header>
		
		 <div class="row">
 			<main id="maineditcap" class="main col-10 col-s-12">
		   
		      <form action='<c:out value="${pageContext.request.contextPath}" />/Linkupdatepago'  method="POST">
		      
		     	  <table class="tablalistarcapa">
		     	  <tr>
		     	  		<td class="sinborde" colspan="2"><h2>Formulario Pago</h2></td>
		     	  </tr>
                    <tr class="sinborde">
		     		 <td class="sinborde"> Id Pago</td>
		     		  <td class="sinborde"><c:out value="${editpago.getIdpago()}"/></td>
		     		 <td class="sinborde"><input type="hidden" name="hdnidpago" id="hdnidpago" value="${editpago.getIdpago()}" /></td>
		     		
		    	 </tr>
		    	 <tr class="sinborde">
		    	   	 <td class="sinborde"> Fecha pago</td>
		      		 <td class="sinborde"><input type="text" name="txtfechapago" id="txtfechapago" value="<c:out value="${editpago.getFechapago()}"/>"></td>
		     	 </tr>

		        <tr class="sinborde">
		        	<td  class="sinborde">Monto Pago</td>
		        	<td  class="sinborde"><input type="text" name="txtmontopago" id="txtmontopago" value="<c:out value="${editpago.getMontopago()}"/>"></td>
		        </tr>
		        <tr class="sinborde">
		        	<td class="sinborde">Mes Pago</td>
		        	<td class="sinborde"><input type="text" name ="txtmespago" id="txtmespago" value="<c:out value="${editpago.getMespago()}"/>"></td>
		  		</tr>
		  		
		  		    <tr class="sinborde">
		        	<td class="sinborde">Año Pago</td>
		        	<td class="sinborde"><input type="text" name ="txtaniopago" id="txtaniopago" value="<c:out value="${editpago.getAniopago()}"/>"></td>
		  		</tr>
		  		
		  		<tr class="sinborde">
		  			<td  class="sinborde">Rut Cliente</td>
		  			<td  class="sinborde"><c:out value="${editpago.getRuncliente()}"/></td>
		        	<td  class="sinborde"><input type="hidden" name="hdnrutcliente" id="hdnrutcliente" value="${editpago.getRuncliente()}" /></td>
		  			
		        </tr>
		        <tr class="sinborde">
		        	<td  class="sinborde"><input type="submit" name ="Modificar"  value="Modificar" ></td>
		      	</tr>
		</table>
		      </form>
      
      	</main>
      	
       <main class= " col-2 col-s-12 main">
            		
				<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistapagos'>Volver Listado Pagos</a><br><br>
  			<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
            
            </main>
            
         </div>
      
</body>
</html>