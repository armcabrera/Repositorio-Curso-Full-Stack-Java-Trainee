<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	 <title>crear usuario</title>
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
	</head>
		<body>
		<header>
		  <h1>Formulario para crear usuario</h1>
		</header>
		
		<div class="row ">
		<main class= " col-4 col-s-12 main">
		
		</main>
		<main class= " col-4 col-s-12 main">
		  <form >
		
		        <label>Nombres</label><br>
		        <input type="text" name="">
		        <br>
		        <br>
		        <label>Apellidos</label><br>
		        <input type="text" name="">
		        <br>
		        <br><label for="no">Fecha Nacimiento</label><br>
		        <input type="date" name="fecha">
		        <br>
		        <br><label for="no">Run</label><br>
		        <input type="text" name="">
		        <br>
		        <br><label for="no1">Tipo de Usuario</label>
		        <br>
		        <select id="no1" name="no1">
		        	<option value="--"></option>
				  <option value="Usuario">Usuario</option>
				  <option value="Administrativo">Administrativo</option>
				  <option value="Cliente">Cliente</option>
				</select><br>
		<br>
		        <input type="submit" name="" value="enviar">
		
		      </form><br>
		          <a href="<%=request.getContextPath() %>/inicio">Inicio</a>
		</main>
		<main class= " col-4 col-s-12 main">
		
		</main>
		    
		</div>
		</body>
</html>