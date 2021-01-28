<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar profesional</title>
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/Hojaestilos.css'>
	    <link rel="icon" href='<c:out value="${pageContext.request.contextPath}"/>/resources/imagenes/favicon.ico'>
	    <script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
	<header>
	<h1>Editar profesional</h1>
	</header>

		<div class="row">
 		<main id="divprofesional" class= " col-10 col-s-12 main">

                

                <form action='<c:out value="${pageContext.request.contextPath}"/>/Linkupdateprof' method="post" id="formprof">

                   <table class="tablalistarcapa">
                    	<tr class="sinborde">
                    	<td colspan="2" class="sinborde"><h2>Formulario Profesional</h2></td>
                    	
                    	</tr>

                       <tr class="sinborde">

                            <td class="sinborde"><label>Run Profesional</label></td>
                           	<td class="sinborde"><c:out value="${editusuprof.getRun()}"/></td>
                            <td style="display:none;"> <input  type="hidden" name="hdnusuarioprof" id="hdnusuarioprof" value="${editusuprof.getRun()}" /></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Nombre</label></td>
                             <td class="sinborde"><input type="text" id="textnombreusuario" name="textnombreusuario"  value="${editusuprof.getNombre()}" ></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Apellido</label></td>
                             <td class="sinborde"><input type="text" id="textapellidousuario" name="textapellidousuario"value="${editusuprof.getApellido()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Fecha Nacimiento</label></td>
                            <td class="sinborde"><input type="DATE" id="textfechausuario" name="textfechausuario"value="${editusuprof.getFechanacimiento()}"></td>

                        </tr>
                        
                        <tr class="sinborde">

                            <td class="sinborde"><label>Telefono</label></td>
                            <td class="sinborde"><input type="text" id="texttelefono" name="texttelefono" value="${editprof.getTelefono()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Titulo</label></td>
                            <td class="sinborde"><input type="text" id="texttitulo" name="texttitulo" value="${editprof.getTitulo()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Proyecto</label></td>
                            <td class="sinborde"><input type="text" id="textproyecto" name="textproyecto" value="${editprof.getProyecto()}"></td>

                        </tr>
                        
                         <tr class="sinborde">
							<td class="sinborde"><label>Tipo de Usuario</label></td>
                            <td class="sinborde"><c:out value="${editusuprof.getTipousuario()}"/></td>
                            <td style="display:none;"><input type="hidden" id="texttipousuario" name= "texttipousuario" value="${editusuprof.getTipousuario()}" ></td>

                        </tr>
                        
                        <tr class="sinborde">
                        
                        	<td  class="sinborde" colspan="2"><input type="submit" value="Modificar"></td>
                        
                        </tr>

                    </table>

                </form>

            </main>
             <main class= " col-2 col-s-12 main">
            		
				<a   href='<c:out value="${pageContext.request.contextPath}"/>/Linkindex'>Volver Inicio</a>
				<a  href='<c:out value="${pageContext.request.contextPath}"/>/Linklistaprofesional'>Volver Listado Usuario</a>
            
            </main>
		</div>
</body>
</html>