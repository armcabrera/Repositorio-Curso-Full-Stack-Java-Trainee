<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar profesional</title>
<link rel="stylesheet" href="Styles.css">
	  <link rel="icon" href="favicon.ico">
</head>
<body>
	<header>
	<h1>Editar profesional</h1>
	</header>

		<div class="row">
 		<main id="divprofesional" class= " col-10 col-s-12 main">

                

                <form action="modificarprof" method="post" id="formprof">

                   <table class="tablalistarcapa">
                    	<tr class="sinborde">
                    	<td colspan="2" class="sinborde"><h2>Formulario Profesional</h2></td>
                    	
                    	</tr>

                       <tr class="sinborde">

                            <td class="sinborde"><label>Run Profesional</label></td>
                           	<td class="sinborde"><c:out value="${Edituse.getRun()}"/></td>
                            <td style="display:none;"> <input  type="hidden" name="hdnusuarioadm" id="hdnusuarioadm" value="${Edituse.getRun()}" /></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Nombre</label></td>
                             <td class="sinborde"><input type="text" id="textnombreusuario" name="textnombreusuario"  value="${Edituse.getNombre()}" ></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Apellido</label></td>
                             <td class="sinborde"><input type="text" id="textapellidousuario" name="textapellidousuario"value="${Edituse.getApellido()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Fecha Nacimiento</label></td>
                            <td class="sinborde"><input type="DATE" id="textfechausuario" name="textfechausuario"value="${Edituse.getFechanacimiento()}"></td>

                        </tr>
                        
                        <tr class="sinborde">

                            <td class="sinborde"><label>Telefono</label></td>
                            <td class="sinborde"><input type="text" id="texttelefono" name="texttelefono" value="${Editprof.getTelefono()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Titulo</label></td>
                            <td class="sinborde"><input type="text" id="texttitulo" name="texttitulo" value="${Editprof.getTitulo()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Proyecto</label></td>
                            <td class="sinborde"><input type="text" id="textproyecto" name="textproyecto" value="${Editprof.getProyecto()}"></td>

                        </tr>
                        
                         <tr class="sinborde">
							<td class="sinborde"><label>Tipo de Usuario</label></td>
                            <td class="sinborde"><c:out value="${Edituse.getTipousuario()}"/></td>
                            <td style="display:none;"><input type="hidden" id="texttipousuario" name= "texttipousuario" value="${Edituse.getTipousuario()}" ></td>

                        </tr>
                        
                        <tr class="sinborde">
                        
                        	<td  class="sinborde" colspan="2"><input type="submit" value="Modificar"></td>
                        
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