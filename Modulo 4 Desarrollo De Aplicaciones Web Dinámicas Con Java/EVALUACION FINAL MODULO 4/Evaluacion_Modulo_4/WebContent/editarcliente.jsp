<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar cliente</title>
		<link rel="stylesheet" href="Styles.css">
	  	<link rel="icon" href="favicon.ico">
</head>
<body>
	<header>
		<h1>Editar Cliente</h1>
		</header>
		
			<div class="row">
 			<main id="divcliente" class= " col-10 col-s-12 main">

                

                <form action="modificarcli" method="post" id="formcliente">

                    <table class="tablalistarcapa">
                    
                    	<tr class="sinborde">
                    	<td colspan="2" class="sinborde"><h2>Formulario Cliente</h2></td>
                    	
                    	</tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Run Cliente</label></td>
                           <td class="sinborde"><c:out value="${Edituse.getRun()}"/></td>
                            <td style="display:none;"> <input type="hidden" name="hdnusuarioadm" id="hdnusuarioadm" value="${Edituse.getRun()}" /></td>

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
                            <td class="sinborde"><input type="text" id="texttelefono" name="texttelefono" value="${Editcli.getTelefono()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>AFP</label></td>
                            <td class="sinborde"><input type="text" id="textafp" name="textafp" value="${Editcli.getAfp()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Sistema De Salud</label></td>
                            <td class="sinborde"><input type="text" id="textsalud" name="textsalud" value="${Editcli.getSalud()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Direccion</label></td>
                            <td class="sinborde"><input type="text" id="textdireccion" name="textdireccion" value="${Editcli.getDireccion()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Comuna</label></td>
                            <td class="sinborde"><input type="text" id="textcomuna" name="textcomuna" value="${Editcli.getComuna()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Edad</label></td>
                            <td class="sinborde"><input type="text" id="textedad" name="textedad" value="${Editcli.getEdad()}"></td>

                        </tr>

                        <tr class="sinborde">

                            <td class="sinborde"><label>Tipo de Usuario</label></td>
                             <td class="sinborde"><c:out value="${Edituse.getTipousuario()}"/></td>
                            <td style="display:none;"><input type="hidden" id="texttipousuario" name= "texttipousuario" value="${Edituse.getTipousuario()}" ></td>

                        </tr>
                        
                        <tr class="sinborde">
                        
                        	<td  class="sinborde" colspan="2"> <input type="submit" name ="ingresar" onclick="validarcliente()" value="ingresar" ></td>
                        
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