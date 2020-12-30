<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>contacto</title>
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
</head>
<body>
 <header>
      <h1>Contacto</h1>
    </header>
<div class="contacto">

    <br> <form class="contactito">
        <label for="no">Nombre</label><br>
        <input type="text" name="nombre"><br>
        <br>
        <label for="ap">Correo electrónico</label><br>
        <input type="email" name="Email" value=""><br>
        <br>
        <label for="te">Teléfono</label><br>
        <input type="text" name="telefono"><br>
        <br>
        <label>Comentario</label><br>
        <textarea name="comentario" rows="10" cols="30"></textarea><br>
        <br>
        <input type="submit" name="enviar">
        <br>
      </form>
      <br>
    </div><br>

<a href="<%=request.getContextPath() %>/inicio">Inicio</a>

</body>
</html>