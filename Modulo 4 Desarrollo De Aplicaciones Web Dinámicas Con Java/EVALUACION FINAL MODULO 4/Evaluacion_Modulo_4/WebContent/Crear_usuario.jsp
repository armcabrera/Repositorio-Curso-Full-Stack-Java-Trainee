<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	 <title>crear usuario</title>
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
      <script src="mostrardiv.js"></script>
    <script src="validarcliente.js"></script>
	</head>
	 <body>
		<header>
		  <h1>Formulario para crear usuario</h1>
		</header>
		
		<div class="row ">
		    <main class= " col-6 col-s-12 main">
		       
 			  

        <label>Seleccione el tipo de usuario:</label> &nbsp;&nbsp;&nbsp;&nbsp;
        <label>Cliente</label><input type="radio" name="usuario" value="cliente" id="cliente" onchange="showContent()">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>Administrativo</label><input type="radio" name="usuario" value="administrativo" id="administrativo" onchange="showContent()">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>Profesional</label><input type="radio"name="usuario" value="profesional" id="profesional" onchange="showContent()">&nbsp;&nbsp;&nbsp;&nbsp;   
		         
		    </main>

            <main class= " col-3 col-s-12 main">
		
		        <a href="<%=request.getContextPath() %>/inicio">Inicio</a>
		
		    </main>
		
		    <main class= " col-3 col-s-12 main">
		
		        <a href="<%=request.getContextPath() %>/Listado_de_usuario">Volver Listar Usuarios</a>
		
            </main>
            
            <main id="divcliente" style="display: none;" class= " col-12 col-s-12 main">

                

                <form action="Crear_usuariocli" method="post" id="formcliente">

                    <table>
                    
                    	<tr>
                    	<td colspan="2"><h2>Formulario Cliente</h2></td>
                    	
                    	</tr>

                        <tr>

                            <td><label>Run Cliente</label></td>
                            <td><input type="text" id="textrunusuario" name="textrunusuario"></td>

                        </tr>

                        <tr>

                            <td><label>Nombre</label></td>
                            <td><input type="text" id="textnombreusuario" name="textnombreusuario"></td>

                        </tr>

                        <tr>

                            <td><label>Apellido</label></td>
                            <td><input type="text" id="textapellidousuario" name = "textapellidousuario"></td>

                        </tr>

                        <tr>

                            <td><label>Fecha Nacimiento</label></td>
                            <td><input type="date" id="textfechausuario" name="textfechausuario"></td>

                        </tr>


                        <tr>

                            <td><label>Telefono</label></td>
                            <td><input type="text" id="texttelefono" name="texttelefono"></td>

                        </tr>

                        <tr>

                            <td><label>AFP</label></td>
                            <td><input type="text" id="textafp" name="textafp"></td>

                        </tr>

                        <tr>

                            <td><label>Sistema De Salud</label></td>
                            <td><input type="text" id="textsalud" name="textsalud"></td>

                        </tr>

                        <tr>

                            <td><label>Direccion</label></td>
                            <td><input type="text" id="textdireccion" name="textdireccion"></td>

                        </tr>

                        <tr>

                            <td><label>Comuna</label></td>
                            <td><input type="text" id="textcomuna" name="textcomuna"></td>

                        </tr>

                        <tr>

                            <td><label>Edad</label></td>
                            <td><input type="text" id="textedad" name="textedad"  ></td>

                        </tr>

                        <tr>

                            <td><label>Tipo de Usuario</label></td>
                            <td><input type="text" id="texttipousuario" name="texttipousuario"value="Cliente" readonly></td>

                        </tr>
                        
                        <tr>
                        
                        	<td colspan="2"> <input type="submit" name ="ingresar" onclick="validarcliente()" value="ingresar" ></td>
                        
                        </tr>
                        



                    </table>

                </form>

            </main>

            <main id="divadministartivo" style="display: none;" class= " col-12 col-s-12 main">

               

                <form  action="Crear_usuarioadm" method="post" id="formadmin">

                    <table>
                    
                    	<tr>
                    	<td colspan="2"><h2>Formulario Administrativo</h2></td>
                    	
                    	</tr>

                        <tr>

                            <td><label>Run Administrativo</label></td>
                            <td><input type="text" id="textrunusuario" name="textrunusuario"></td>

                        </tr>

                        <tr>

                            <td><label>Nombre</label></td>
                            <td><input type="text" id="textnombreusuario" name="textnombreusuario"></td>

                        </tr>

                        <tr>

                            <td><label>Apellido</label></td>
                            <td><input type="text" id="textapellidousuario" name="textapellidousuario"></td>

                        </tr>

                        <tr>

                            <td><label>Fecha Nacimiento</label></td>
                            <td><input type="date" id="textfechausuario" name="textfechausuario"></td>

                        </tr>


                        <tr>

                            <td><label>Correo</label></td>
                            <td><input type="text" id="textcorreo" name="textcorreo"></td>

                        </tr>

                        <tr>

                            <td><label>Area</label></td>
                            <td><input type="text" id="textarea" name="textarea"></td>

                        </tr>
                        
                         <tr>

                            <td><label>Tipo de Usuario</label></td>
                            <td><input type="text" id="texttipousuario" name= "texttipousuario" value="Administrativo" readonly></td>

                        </tr>
                        
                        <tr>
                        
                        	<td colspan="2"><input type="submit" name ="ingresar" onclick="validaradmin()" value="ingresar" ></td>
                        
                        </tr>

                        
                    </table>

                </form>

            </main>

            <main id="divprofesional" style="display: none;" class= " col-12 col-s-12 main">

                

                <form action="Crear_usuarioprof" method="post" id="formprof">

                    <table>
                    
                    	<tr>
                    	<td colspan="2"><h2>Formulario Profesional</h2></td>
                    	
                    	</tr>

                       <tr>

                            <td><label>Run Profesional</label></td>
                            <td><input type="text" id="textrunusuario" name="textrunusuario"></td>

                        </tr>

                        <tr>

                            <td><label>Nombre</label></td>
                            <td><input type="text" id="textnombreusuario" name="textnombreusuario"></td>

                        </tr>

                        <tr>

                            <td><label>Apellido</label></td>
                            <td><input type="text" id="textapellidousuario" name="textapellidousuario"></td>

                        </tr>

                        <tr>

                            <td><label>Fecha Nacimiento</label></td>
                            <td><input type="date" id="textfechausuario" name="textfechausuario"></td>

                        </tr>
                        
                        <tr>

                            <td><label>Telefono</label></td>
                            <td><input type="text" id="texttelefono" name="texttelefono"></td>

                        </tr>

                        <tr>

                            <td><label>Titulo</label></td>
                            <td><input type="text" id="texttitulo" name="texttitulo"></td>

                        </tr>

                        <tr>

                            <td><label>Proyecto</label></td>
                            <td><input type="text" id="textproyecto" name="textproyecto"></td>

                        </tr>
                        
                         <tr>

                            <td><label>Tipo de Usuario</label></td>
                            <td><input type="text" id="texttipousuario" name="texttipousuario" value="Profesional" readonly></td>

                        </tr>
                        
                        <tr>
                        
                        	<td colspan="2"><input type="submit" value="Ingresar" onclick="validarprof()"></td>
                        
                        </tr>

                    </table>

                </form>

            </main>
		
		
		    
        </div>
        
		</body>
		
</html>