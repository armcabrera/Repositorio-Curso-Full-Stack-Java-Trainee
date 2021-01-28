<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editaradministrativo</title>
 		<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
	    <link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
	    <script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
		<h1>Editar administrativo</h1>
		</header>
		
		 <div class="row">
 			<main id="divadministartivo"  class= " col-10 col-s-12 main">

                <form  action='<c:out value="${pageContext.request.contextPath}"/>/Linkupdateadministrativo' method="post" id="modificaradmin">

                    <table class="tablalistarcapa">
                    	<tr class="sinborde">
                    		<td class="sinborde" colspan="2"><h2>Formulario Administrativo</h2></td>
                    	
                    	</tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Run Administrativo</label></td>
                            <td class="sinborde"><c:out value="${editusucli.getRun()}"/></td>
                            <td style="display:none;"> <input   type="hidden" name="hdnusuarioadm" id="hdnusuarioadm" value="${editusucli.getRun()}" /></td>
                            
                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Nombre</label></td>
                            <td class="sinborde"><input type="text" id="textnombreusuario" name="textnombreusuario"  value="${editusucli.getNombre()}" ></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Apellido</label></td>
                            <td class="sinborde"><input type="text" id="textapellidousuario" name="textapellidousuario"value="${editusucli.getApellido()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Fecha Nacimiento</label></td>
                            <td class="sinborde"><input type="DATE" id="textfechausuario" name="textfechausuario"value="${editusucli.getFechanacimiento()}"></td>

                        </tr>


                        <tr class="sinborde">

                            <td class="sinborde"><label>Correo</label></td>
                            <td class="sinborde"> <input type="text" id="textcorreo" name="textcorreo" value="${editadmin.getCorreo()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Area</label></td>
                            <td class="sinborde"><input type="text" id="textarea" name="textarea" value="${editadmin.getArea()}"></td>

                        </tr>
                        
                         <tr class="sinborde">

                            <td class="sinborde"><label>Tipo de Usuario</label></td>
                            <td class="sinborde"><c:out value="${editusucli.getTipousuario()}"/></td>
                            <td style="display:none;"><input type="hidden" id="texttipousuario" name= "texttipousuario" value="${editusucli.getTipousuario()}" ></td>
							
                        </tr>
                        
                        <tr class="sinborde">
                        
                        	<td colspan="2" class="sinborde"><input type="submit" name ="modificar"  value="modificar" ></td>
                        
                        </tr>
 
                   	 </table>

                	</form>

            	</main>
            <main class= " col-2 col-s-12 main">
            		
				
				<a   href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
				<a  href='<c:out value="${pageContext.request.contextPath}"/>/Linklistaadministrativo'>Volver Listado Usuario</a>
            
            </main>
            
         </div>
</body>
</html>