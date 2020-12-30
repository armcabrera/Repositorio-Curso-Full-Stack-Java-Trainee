<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	  <title>listausuarios</title>
	  <link rel="stylesheet" href="Styles.css">
	  <link rel="icon" href="favicon.ico">
	</head>
<body>
<header>
  <h1>Lista de usuarios</h1>
</header>

  <div class="row">
  <main class="col-4 col-s-12 main"></main>
<main class="col-4 col-s-12 main">
<table class="tablalistarcapa">
    <thead>
	    <tr>
	      <th>Rut usuario</th>
	      <th>Nombre usuario</th>
	      <th>Apellidos usuario</th>
	      <th>Tipo de usuario</th>
	      <th>Eliminar</th>
	      <th>Modificar</th>
	     </tr>
    </thead>
   

    <tr>
      <td>18672988-0</td>
      <td>Marcos</td>
      <td>Espinoza Espinoza</td>
      <td>Cliente</td>
      <td><input type="submit" value="Eliminar" name="modif"></td>
     <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>
    

    </tr>

      <tr>
        <td>19876209-1</td>
        <td>Benjamin</td>
        <td> Cantillana Soto</td>
        <td>Profesional</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
      <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>
      </tr>

      <tr>
        <td>19876278-0</td>
        <td>Pablo</td>
        <td>Sepulveda Orellana</td>
        <td>Administrativo</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
       <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>
      </tr>
      <tr>
        <td>20754989-5</td>
        <td>Macarena</td>
        <td>Perez Pizarro</td>
        <td>Administrativo</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
        <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>

      </tr>
      <tr>
        <td>18765279-0</td>
        <td>Mike</td>
        <td>Love Love</td>
        <td>Profesional</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
        <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>
      </tr>

      <tr>
        <td>19999765-1</td>
        <td>Karen</td>
        <td>Johanson Cornejo</td>
        <td>Cliente</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
      <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>

      </tr>
      <tr>
        <td>19987627-0</td>
        <td>Hanna</td>
        <td>Montana Montt</td>
        <td>Cliente</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
        <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>
      </tr>
      <tr>
        <td>9876290-1</td>
        <td>Bayron</td>
        <td>Echeverria Nunez</td>
        <td>Profesional</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
       <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>
      </tr>
      <tr>
        <td>8787289-1</td>
        <td>Camila</td>
        <td>Castillo Stange</td>
        <td>Administrativo</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
       <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>

      </tr>
      <tr>
        <td>20987678-1</td>
        <td>Cristina</td>
        <td>zapata cortes</td>
        <td>Profesional</td>
        <td><input type="submit" value="Eliminar" name="modif"></td>
        <td> <a href="editarcliente.html"><input type="button" value="Modificar" name="modif"></a></td>
      </tr>

</table>
</main>

   <main class="col-4 col-s-12 main">
   <a href="<%=request.getContextPath() %>/Crear_usuario">Crear usuario</a>
   </main>
   
	<main class="col-7 col-s-12 main">
	<a href="<%=request.getContextPath() %>/inicio">Inicio</a>
	</main>




</div>
</body>
</html>