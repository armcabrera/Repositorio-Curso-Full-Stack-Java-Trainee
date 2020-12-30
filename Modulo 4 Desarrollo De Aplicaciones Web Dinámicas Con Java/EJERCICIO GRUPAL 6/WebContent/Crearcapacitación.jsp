<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%-- <%@ page import='java.util.Date'%> --%>
<html>
<head>
<meta charset="ISO-8859-1">
   <title></title>
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<header>
      <h1>Crear Capacitacion</h1>
    </header><br>
    
<div class="cap">

      <form class="creacap">
        <label for="no">Fecha capacitación</label><br>
        <input type="Date" name="fecha"><br>
        <br>
        <label for="ap">Hora capacitaciones</label><br>
        <input type="TIME" name="hora" value=""><br>
        <br>
        <label for="te">Lugar</label><br>
        <input type="text" name="lugar"><br>
        <br>
        <label for="du">Duración</label><br>
        <input type="text" name="duracion" value=""><br>
        <br>
        <label>Nombre de cliente</label><br>
        <input type="text" name=""><br>
        <br>
        <input type="submit" name=""><br>
        <br>

      </form>

<a href="<%=request.getContextPath() %>/inicio">Inicio</a>
  </div>
</body>
</html>