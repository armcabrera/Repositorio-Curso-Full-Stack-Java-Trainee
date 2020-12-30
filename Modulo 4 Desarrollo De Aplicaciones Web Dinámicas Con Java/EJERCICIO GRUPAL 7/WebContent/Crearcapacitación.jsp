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
     <script src="validarCrearcapa.js"></script>
    
</head>
<body>
<header>
      <h1>Crear Capacitacion</h1>  <!-- value="Campo Autonumerico" readonly -->
    </header><br>
    
<div class="cap">

      <form action="Crearcapacitación" method="post" id="formcapa">
      
      <label> Id capacitación</label><br>
      <input  type="text" name="txtidcapacitacion" id="txtidcapacitacion" onkeyUp="return ValNumero(this)"  ><br>
      <br>
      <label> Día</label><br>
      <input type="text" name="txtdia" id="txtdia"><br>
      <br>
       <label for="ap">Hora capacitaciones</label><br>
        <input type="time" name="txthoracapa" id="txthoracapa"><br>
        <br>
        <label for="te">Lugar</label><br>
        <input type="text" name="txtlugar" id="txtlugar"><br>
        <br>
        <label for="du">Duración</label><br>
        <input type="text" name ="txtduracion" id="txtduracion"><br>
        <br>
        <input type="submit" name ="ingresar" onclick="validarformcapa()" value="ingresar" ><br>
        <br>

      </form>

<a href="<%=request.getContextPath() %>/inicio">Inicio</a>
  </div>
</body>
</html>