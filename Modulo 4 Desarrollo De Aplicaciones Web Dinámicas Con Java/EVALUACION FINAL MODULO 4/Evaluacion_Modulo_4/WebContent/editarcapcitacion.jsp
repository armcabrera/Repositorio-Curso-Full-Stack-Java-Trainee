<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar capacitacion</title>
 <link rel="stylesheet" href="Styles.css">
	  <link rel="icon" href="favicon.ico">
</head>
	<body>

		<header>
			<h1>Editar capacitación</h1>
		</header>
		
		 <div class="row">
 			<main id="maineditcap" class="main col-10 col-s-12">
		   
		      <form action="modificarcapa" method="post" >
		      
		     	  <table class="tablalistarcapa">
		     	  <tr>
		     	  		<td class="sinborde" colspan="2"><h2>Formulario capacitacion</h2></td>
		     	  </tr>
                    <tr class="sinborde">
		     		 <td class="sinborde"> Id capacitación</td>
		     		  <td class="sinborde"><c:out value="${Editcap.getIdcapa()}"/></td>
		     		 <td class="sinborde"><input type="hidden" name="hdnidcapa" id="hdnidcapa" value="${Editcap.getIdcapa()}" /></td>
		     		
		    	 </tr>
		    	 <tr class="sinborde">
		    	   	 <td class="sinborde"> Día</td>
		      		 <td class="sinborde"><input type="text" name="txtdia" id="txtdia" value="<c:out value="${Editcap.getDia()}"/>"></td>
		     	 </tr>
		     	 <tr class="sinborde">
		      		 <td  class="sinborde">Hora capacitaciones</td>
		        	 <td class="sinborde"><input type="time" name="txthoracapa" id="txthoracapa" value="<c:out value="${Editcap.getHora()}"/>"></td>
		        </tr>
		        <tr class="sinborde">
		        	<td  class="sinborde">Lugar</td>
		        	<td  class="sinborde"><input type="text" name="txtlugar" id="txtlugar" value="<c:out value="${Editcap.getLugar()}"/>"></td>
		        </tr>
		        <tr class="sinborde">
		        	<td class="sinborde">Duración</td>
		        	<td class="sinborde"><input type="text" name ="txtduracion" id="txtduracion" value="<c:out value="${Editcap.getDuracion()}"/>"></td>
		  		</tr>
		  		<tr class="sinborde">
		  			<td  class="sinborde">Rut Cliente</td>
		  			<td  class="sinborde"><c:out value="${Editcap.getRuncliente()}"/></td>
		        	<td  class="sinborde"><input type="hidden" name="hdnrutcliente" id="hdnrutcliente" value="${Editcap.getRuncliente()}" /></td>
		  			
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