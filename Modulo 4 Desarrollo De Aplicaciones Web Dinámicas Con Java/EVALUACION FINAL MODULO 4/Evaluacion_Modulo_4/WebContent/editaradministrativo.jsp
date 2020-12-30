<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editaradministrativo</title>
 <link rel="stylesheet" href="Styles.css">
	  <link rel="icon" href="favicon.ico">
</head>
	<body>
		<header>
		<h1>Editar administrativo</h1>
		</header>
		
		 <div class="row">
 			<main id="divadministartivo"  class= " col-10 col-s-12 main">

                <form  action="modificaradmin" method="post" id="modificaradmin">

                    <table class="tablalistarcapa">
                    	<tr class="sinborde">
                    		<td class="sinborde" colspan="2"><h2>Formulario Administrativo</h2></td>
                    	
                    	</tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Run Administrativo</label></td>
                            <td class="sinborde"><c:out value="${Edituse.getRun()}"/></td>
                            <td style="display:none;"> <input   type="hidden" name="hdnusuarioadm" id="hdnusuarioadm" value="${Edituse.getRun()}" /></td>
                            
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

                            <td class="sinborde"><label>Correo</label></td>
                            <td class="sinborde"> <input type="text" id="textcorreo" name="textcorreo" value="${Editadmin.getCorreo()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Area</label></td>
                            <td class="sinborde"><input type="text" id="textarea" name="textarea" value="${Editadmin.getArea()}"></td>

                        </tr>
                        
                         <tr class="sinborde">

                            <td class="sinborde"><label>Tipo de Usuario</label></td>
                            <td class="sinborde"><c:out value="${Edituse.getTipousuario()}"/></td>
                            <td style="display:none;"><input type="hidden" id="texttipousuario" name= "texttipousuario" value="${Edituse.getTipousuario()}" ></td>
							
                        </tr>
                        
                        <tr class="sinborde">
                        
                        	<td colspan="2" class="sinborde"><input type="submit" name ="modificar"  value="modificar" ></td>
                        
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