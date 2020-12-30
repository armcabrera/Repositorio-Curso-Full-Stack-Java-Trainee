<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
<%-- 	<script>
	function Validaciones() {
        var i, s, f, bueno;
        var errores2="";
                    f = "32765432";
                    r = document.getElementById("rutt").value;
                    largo=r.length - 2;
                    bueno=false;
                    s=0;
                    for (i=0;i<largo;i++){
                        s=s+(parseInt(r.charAt(i)) * parseInt(f.charAt(i)));
                    }
                    dv=11-(s%11);
                    if (dv==10 && (r.charAt(9)=='K' || r.charAt(9)=='k')){
                       
                        bueno=true;
                    }else{
                        if (dv==11 && r.charAt(9)=='0'){
                            bueno=true;
                        }else{
                            if (dv==parseInt(r.charAt(9))){
                                bueno=true;
                            }else{
                                errores2 ="Ingrese un RUT valido, sin puntos y con guión"
                                document.getElementById("rutt").focus();
                                bueno=false;
                            }
                        }
                    }
                  
        var pass = document.getElementById("login-pass").value;
         var errores="";
       
      
		if (pass == "") {
			errores += "Ingresar contrasena valida" + "\n";
		}  	
		if (pass.length  >20){
			errores += "Contrasena excede caracter max.20" +"\n";
        }
		if (errores == "" && bueno==true) {
         
               href="<%=request.getContextPath() %>/inicio"
            }	
         else{
                alert(errores+""+ errores2)          
                }   
	 	 }
        
</script> --%>
</head>
		<body>
		   <header>
		    <h1>Login usuario</h1>
		    </header>
		<div class="row">
		<main class=" col-4 col-s-12 main"></main>
		
		<main class=" col-4 col-s-12 main">
		<form method="post" action="Listado_de_usuario">
		        <div class="rut1">
		        Rut : <input type="text" name="rut" id="rutt"placeholder="XXXXXXXX-Y"/> <br>
		        </div>
		        <br>
		        <div class="pass1">
		        Clave : <input type="password" class="login-field" value="" placeholder="Contrasena" id="login-pass"><br>
		        </div>
				<br>
				<button type="submit" value="Ingresar" onclick="Validaciones();" >ingresar</button>
		
			</form>
		</main>
		
		<main class=" col-4 col-s-12 main"></main>
			
		
		</div>
		</body>
</html>