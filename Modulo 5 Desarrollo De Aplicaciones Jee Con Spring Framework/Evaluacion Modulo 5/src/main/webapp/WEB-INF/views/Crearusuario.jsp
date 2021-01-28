<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	 <title>crear usuario</title>
 		 <!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
 		<!-- JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>	
 		<link rel="icon" href="resources/imagenes/favicon.ico">
	    <link rel="stylesheet" href="resources/css/Hojaestilos.css" />
      <script src="resources/js/mostrardiv.js"></script>
    <script src="resources/js/validarcliente.js"></script>
     	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
	</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
			<h1>Formulario para crear usuario</h1>
		</header>
		
		<div class="row ">
		
			<main class="main col12 col-s-12">
				<ul class="nav justify-content-center">
					<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="Linklistausuario">Volver Listado Usuarios</a>
		  			</li>
		    		<li class="nav-item">
		   			<a class="nav-link" href="Linkindex">Volver Inicio</a>
		  			</li>
				</ul>
  			</main>
		
		 	<main class= " col-12 col-s-12 main menuform">		       
         		<label>Seleccione el tipo de usuario:</label> &nbsp;&nbsp;&nbsp;&nbsp;
        		<label>Cliente&nbsp;</label><input type="radio" name="usuario" value="cliente" id="cliente" onchange="showContent()">&nbsp;&nbsp;&nbsp;&nbsp;
        		<label>Administrativo&nbsp;</label><input type="radio" name="usuario" value="administrativo" id="administrativo" onchange="showContent()">&nbsp;&nbsp;&nbsp;&nbsp;
        		<label>Profesional&nbsp;</label><input type="radio"name="usuario" value="profesional" id="profesional" onchange="showContent()">&nbsp;&nbsp;&nbsp;&nbsp;   	         
		    </main>


            
            <main id="divcliente" style="display: none;" class= " col-4 col-s-12 main">
				<h2>Formulario Cliente</h2>
               
				<form class="was-validated" action="Linkcrearcliente" method="post" id="formadmin">
  				
				   	<label for="validationServer01" class="form-label">Run Cliente</label>
  		  			<input type="text" class="form-control is-valid" id="txtruncli" name="txtruncli" required>			    
				    Ingrese un rut por favor.<br><br>
				   
				    
				    
				     <label for="validationServer01" class="form-label">Nombre</label>
  		  			<input type="text" class="form-control is-valid" id="txtnombreacli" name="txtnombreacli"	required>
				      Ingrese un nombre por favor.<br><br>
				      
				    
				     <label for="validationServer01" class="form-label">Apellido</label>
  		  			<input type="text" class="form-control is-valid" id="txtapellidocli" name="txtapellidocli"	required>
				      Ingrese un Apellido por favor.<br><br>

				    
				   	<label for="validationServer01" class="form-label">Fecha Nacimiento</label>
  		  			<input type="date" class="form-control is-valid" id="txtfechacli" name="txtfechacli"	required>
				      Ingrese un fecha por favor.<br><br>

				    
				     <label for="validationServer01" class="form-label">Telefono</label>
  		  			<input type="text" class="form-control is-valid" id="txttelefono" name="txttelefono"	required>
				      Ingrese un telefono por favor.<br><br>

				    
				        <label for="validationServer01" class="form-label">AFP</label>
  		  			<input type="text" class="form-control is-valid" id="txtafp" name="txtafp"	required>
				      Ingrese un sistema de salud por favor.<br><br>
				      
				      <label for="validationServer01" class="form-label">Sistema Salud</label>
  		  			<input type="text" class="form-control is-valid" id="txtsalud" name="txtsalud"	required>
				      Ingrese 1 Fonasa 2 Isapre por favor.<br><br>
				      
				      <label for="validationServer01" class="form-label">Direccion</label>
  		  			<input type="text" class="form-control is-valid" id="txtdireccion" name="txtdireccion"	required>
				      Ingrese una direccion por favor.<br><br>
				      
				      <label for="validationServer01" class="form-label">Comuna</label>
  		  			<input type="text" class="form-control is-valid" id="txtcomuna" name="txtcomuna"	required>
				      Ingrese una comuna por favor.<br><br>
				      
				 	<label for="validationServer01" class="form-label">Edad</label>
  		  			<input type="text" class="form-control is-valid" id="txtedad" name="txtedad"	required>
				      Ingrese una comuna por favor.<br><br>
				
				
				     <label for="validationServer01" class="form-label">Tipo Usuario</label>
  		  			<input type="text" class="form-control is-valid" id="txttipousuario" name="txttipousuario" value="Cliente" readonly	required>
				     <br><br>

					<button class="btn btn-primary tamañoboton" type="submit">Ingresar</button>
					
				</form>
     

            </main>
            
            
            

            <main id="divadministartivo" style="display: none;" class= " col-4 col-s-12 main">
				<h2>Formulario Administrativo</h2>
               
				<form class="was-validated" action="Linkcrearadmin" method="post" id="formadmin">
  				
				    <label for="validationServer01" class="form-label">Run Administrativo</label>
  		  			<input type="text" class="form-control is-valid" id="txtrunadmin" name="txtrunadmin"	required>			    
				    Ingrese un rut por favor.<br><br>
				   
				    
				    
				    <label for="validationServer01" class="form-label">Nombre</label>
  		  			<input type="text" class="form-control is-valid" id="txtnombreadmin" name="txtnombreadmin"	required>
				    Ingrese un nombre por favor.<br><br>
				      
				    
				    <label for="validationServer01" class="form-label">Apellido</label>
  		  			<input type="text" class="form-control is-valid" id="txtapellidoadmin" name="txtapellidoadmin"	required>
				    Ingrese un Apellido por favor.<br><br>

				    
				   	<label for="validationServer01" class="form-label">Fecha Nacimiento</label>
  		  			<input type="date" class="form-control is-valid" id="txtfechaadmin" name="txtfechaadmin"	required>
				    Ingrese un fecha por favor.<br><br>

				    
				     <label for="validationServer01" class="form-label">Correo</label>
  		  			<input type="email" class="form-control is-valid" id="txtcorreo" name="txtcorreo"	required>
				    Ingrese un correo por favor.<br><br>

				    
				    <label for="validationServer01" class="form-label">Area</label>
  		  			<input type="text" class="form-control is-valid" id="txtarea" name="txtarea"	required>
				    Ingrese un area por favor.<br><br>
				
				
				    <label for="validationServer01" class="form-label">Tipo Usuario</label>
  		  			<input type="text" class="form-control is-valid" id="txttipousuario" name="txttipousuario" value="Administrativo" readonly	required>
				    <br><br>

					<button class="btn btn-primary tamañoboton" type="submit">Ingresar</button>
					
				</form>
     

            </main>

            <main id="divprofesional" style="display: none;" class= " col-4 col-s-12 main">
            
            <h2>Formulario Profesional</h2>

                <form class="was-validated" action="Linkcrearprofesional" method="post" id="formprof">
  				    <label for="validationServer01" class="form-label">Run Profesional</label>
  		  			<input type="text" class="form-control is-valid" id="txtrunprof" name="txtrunprof"	required>			    
				    Ingrese un rut por favor.<br><br>
				   
				    
				    
				    <label for="validationServer01" class="form-label">Nombre</label>
  		  			<input type="text" class="form-control is-valid" id="txtnombreprof" name="txtnombreprof"	required>
				    Ingrese un nombre por favor.<br><br>
				      
				    
				    <label for="validationServer01" class="form-label">Apellido</label>
  		  			<input type="text" class="form-control is-valid" id="txtapellidoprof" name="txtapellidoprof"	required>
				    Ingrese un Apellido por favor.<br><br>

				    
				   	<label for="validationServer01" class="form-label">Fecha Nacimiento</label>
  		  			<input type="date" class="form-control is-valid" id="txtfechaprof" name="txtfechaprof"	required>
				    Ingrese un fecha por favor.<br><br>

				    
				    <label for="validationServer01" class="form-label">Telefono</label>
  		  			<input type="text" class="form-control is-valid" id="txttelfono" name="txttelfono"	required>
				    Ingrese un telefono por favor.<br><br>

				    
				    <label for="validationServer01" class="form-label">Titulo</label>
  		  			<input type="text" class="form-control is-valid" id="txttitulo" name="txttitulo"	required>
				    Ingrese un titulo por favor.<br><br>

				    
				    <label for="validationServer01" class="form-label">Proyecto</label>
  		  			<input type="text" class="form-control is-valid" id="txtproyecto" name="txtproyecto"	required>
				    Ingrese un proyecto por favor.<br><br>
				
				
				    <label for="validationServer01" class="form-label">Tipo Usuario</label>
  		  			<input type="text" class="form-control is-valid" id="txttipousuario" name="txttipousuario" value="Profesional" readonly	required>
				    <br><br>

				    <button class="btn btn-primary tamañoboton" type="submit">Ingresar</button>
					
			</form>
           </main>		    
        </div>
        
      <footer style="height: 150px; overflow: hidden;">  
      <svg viewBox="0 0 500 150" preserveAspectRatio="none" 
      style="height: 100%; width: 100%;">
      <path d="M-4.28,3.26 C150.00,150.00 363.65,-95.43 500.00,49.99 L500.00,150.00 L0.00,150.00 Z" 
      style="stroke: none; fill:  rgb(0, 173, 181);"></path></svg>
  	  </footer>
        
		</body>
		
</html>
