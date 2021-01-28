<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Responder Check</title>	
		<link rel="stylesheet" href="resources/css/Hojaestilos.css">
		<link rel="icon" href="resources/imagenes/favicon.ico">
		<script type="text/javascript" src='resources/js/chequeos.js'></script>
		<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
	</head>
	<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
		<header>
        	<h1>Listado De Chequeos</h1>
        </header>

        <div class="row">
        
        	 <main class="col-1 col-s-12 main"></main>

            <main class="col-3 col-s-12 main">

                <form id="formchek">                   
                        <input type="checkbox" name="checkbox"><label id="chk0">Implementos Seguridad</label><br><br>
                        <input type="checkbox" name="checkbox"><label id="chk1">Protocolo De Seguridad</label><br><br>
                        <input type="checkbox" name="checkbox"><label id="chk2">Vestimenta De Seguridad</label><br><br>
                        <input type="checkbox" name="checkbox"><label id="chk3">Manual De Seguridad</label><br><br><br>
                        <input type="button" id="añade" onclick="mostrarchek()" value="Listar Chequeos" />
                        <input type="button" value="Borrar Chek" onclick="location.reload()">              
                </form>
            </main>
            
            <main class="col-4 col-s-12" id="divmostardor"></main>

           	<main  class="col-4 col-s-12 alingderecha">      	
           		<a href="Linklistadovisita">Volver Listado Visitas</a><br><br>
                <a href="Linkindex">Volver Pagina Principal</a>
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