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

      <form action="Crearcapacitaci�n" method="post">
      
      <label> Id capacitaci�n</label><br>
      <input type="text" name="txtidcapacitacion" id="txtidcapacitacion"><br>
      <br>
      <label> Rut</label><br>
      <input type="text" name="txtrut" id="txtrut"><br>
      <br>
      <label> D�a</label><br>
      <input type="text" name="txtdia" id="txtdia"><br>
      <br>
       <label for="ap">Hora capacitaciones</label><br>
        <input type="text" name="txthoracapa" id="txthoracapa"><br>
        <br>
        <label for="te">Lugar</label><br>
        <input type="text" name="txtlugar" id="txtlugar"><br>
        <br>
        <label for="du">Duraci�n</label><br>
        <input type="text" name ="txtduracion" id="txtduracion"><br>
        <br>
        <label>Cantidad asistentes</label><br>
        <input type="text" name ="txtcantasistente" id="txtcantasistente"><br>
        <br>
        <input type="submit" name ="ingresar" value="ingresar" ><br>
        <br>

      </form>

<a href="<%=request.getContextPath() %>/inicio">Inicio</a>
  </div>
</body>
</html>