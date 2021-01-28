<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Accidente</title>
			<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
	    <link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
	    <script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
	<header>
		<h1>Editar Accidente</h1>
		</header>
		
			<div class="row">
 			<main id="divcliente" class= " col-10 col-s-12 main">

                

                <form action='<c:out value="${pageContext.request.contextPath}" />/Linkupdateacci' method="post" id="formcliente">

                    <table class="tablalistarcapa">
                    
                    	<tr class="sinborde">
                    	<td colspan="2" class="sinborde"><h2>Formulario Accidente</h2></td>
                    	
                    	</tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Identificador Accidente</label></td>
                           <td class="sinborde"><c:out value="${editacci.getAccidenteid()}"/></td>
                            <td style="display:none;"> <input type="hidden" name="hdnidcacci" id="hdnidcacci" value="${editacci.getAccidenteid()}" /></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Fecha Accidente</label></td>
                             <td class="sinborde"><input type="date" id="txtfechaacc" name="txtfechaacc"  value="${editacci.getAccifecha()}" ></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Hora Accidente</label></td>
                             <td class="sinborde"><input type="time" id="txthoracci" name="txthoracci"value="${editacci.getAccihora()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Lugar Accidente</label></td>
                           <td class="sinborde"><input type="text" id="txtlugaracc" name="txtlugaracc"value="${editacci.getAccilugar()}"></td>

                        </tr>


                        <tr class="sinborde">

                            <td class="sinborde"><label>Origen Accidente</label></td>
                            <td class="sinborde"><input type="text" id="txtorigenacc" name="txtorigenacc" value="${editacci.getAcciorigen()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Rut Cliente</label></td>
                             <td class="sinborde"><c:out value="${editacci.getCliente_rutcliente()}"/></td>
                            <td style="display:none;"><input type="hidden" id="txtrutcliente" name= "txtrutcliente" value="${editacci.getCliente_rutcliente()}" ></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Consecuencias</label></td>
                            <td><textarea class="form-control" id="txtconsecuencias" name="txtconsecuencias" rows="3"><c:out value= "${editacci.getAcciconsecuencia()}"/></textarea></td>
                  

                        </tr>

                        

         
                        
                        <tr class="sinborde">
                        
                        	<td  class="sinborde" colspan="2"> <input type="submit" name ="ingresar" onclick="validarcliente()" value="ingresar" ></td>
                        
                        </tr>
                       
                    </table>

                </form>

            </main>
             <main class= " col-2 col-s-12 main">
            		
				<a   href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
				<a  href='<c:out value="${pageContext.request.contextPath}"/>/Linklistacliente'>Volver Listado Usuario</a>
            
            </main>
  		</div>
</body>
</html>