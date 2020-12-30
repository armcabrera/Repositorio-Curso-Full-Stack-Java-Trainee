<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Capacitaciones</title>
	
 <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
   <!--  <script type="text/javascript" src="validarListarCapa.js"></script> -->
</head>

<body>
    <header>
    <h1>Login</h1>
    </header>
    
    <div class="row">
    
    <main class="main col-4 col-s-12">
    
    </main>
    
     <main class="main col-4 col-s-12">
     
       <form method="post" action="GenerarSesion">
     
                  
            <p>Ingrese Usuario:&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="txtusuario" id="txtusuario"></p>
                        
            <p>Ingrese Contraseña
            <input type="password" id="txtpassword"></p><br>
                            
                            
                       
              <input type="submit" name="btningresar" onclick="validarlogin()" value="Ingresar" id="btningresar">        
        
        </form>
      
    
    </main>
    
     <main class="main col-4 col-s-12">
    
    </main>

    
    </div>



	
</body>
</html>