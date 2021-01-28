<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Chequeo</title>
 <link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
<link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
			<h1>Editar Chequeo</h1>
		</header>
		
		 <div class="row">
 			<main id="maineditcap" class="main col-10 col-s-12">
		   
		      <form action='<c:out value="${pageContext.request.contextPath}" />/Linkupdatechequeo'  method="POST">
		      
		     	  <table class="tablalistarcapa">
		     	  <tr>
		     	  		<td class="sinborde" colspan="2"><h2>Formulario Pago</h2></td>
		     	  </tr>
                    <tr class="sinborde">
		     		 <td class="sinborde"> Id Chequeo</td>
		     		  <td class="sinborde"><c:out value="${editche.getIdchequeo()}"/></td>
		     		 <td class="sinborde"><input type="hidden" name="hdnidchequeo" id="hdnidchequeo" value="${editche.getIdchequeo()}" /></td>
		     		
		    	 </tr>
		    	 
		    	 <tr>	
		    	 <td>Implementos Seguridad</td>
		    	 <td>		
					<select   id="txtImplementos" name="txtImplementos" required>
      					<option value=""><c:out value="${editche.getImplementoseguridad()}"/></option>
					    <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>	
    				</select>
    				</td>
		    	 </tr>
		    	 
		    	 		    	 <tr>	
		    	 <td>Protocolos Seguridad</td>
		    	 <td>		
					<select   id="txtprotocolos" name="txtprotocolos" required>
      					<option value=""><c:out value="${editche.getProtocoloseguridad()}"/></option>
					   <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>
    				</select>
    				</td>
		    	 </tr>
		    	 
		    	 		    	 <tr>	
		    	 <td>Vestimenta Seguridad</td>
		    	 <td>		
					<select   id="txtVestimenta" name="txtVestimenta" required>
      					<option value=""><c:out value="${editche.getVestimentaseguridad()}"/></option>
					    <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>	
    				</select>
    				</td>
		    	 </tr>
		    	 
		    	 		    	 <tr>	
		    	 <td>Manual Seguridad</td>
		    	 <td>		
					<select   id="txtManual" name="txtManual" required>
      					<option value=""><c:out value="${editche.getManualseguridad()}"/></option>
					    <option value="Aprobado">Aprobado</option>
					    <option value="Rechazado">Rechazado</option>
    				</select>
    				</td>
		    	 </tr>
		    	 
		    	 <tr class="sinborde">

                            <td class="sinborde"><label>Observaciones</label></td>
                            <td><textarea class="form-control" id="txtobservaciones" name="txtobservaciones" rows="3"><c:out value= "${editche.getObservaciones()}"/></textarea></td>
                  

                        </tr>


		  		
		  		<tr class="sinborde">
		  			<td  class="sinborde">Id Visita</td>
		  			<td  class="sinborde"><c:out value="${editche.getVisita_idvisita()}"/></td>
		        	<td  class="sinborde"><input type="hidden" name="hdnidvisita" id="hdnidvisita" value="${editche.getVisita_idvisita()}" /></td>
		  			
		        </tr>
		        <tr class="sinborde">
		        	<td  class="sinborde"><input type="submit" name ="Modificar"  value="Modificar" ></td>
		      	</tr>
		</table>
		      </form>
      
      	</main>
      	
       <main class= " col-2 col-s-12 main">
            		
				<a href='<c:out value="${pageContext.request.contextPath}"/>/Linklistachequeos'>Volver Listado Chequeos</a><br><br>
  			<a href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
            
            </main>
            
         </div>
      
</body>
</html>