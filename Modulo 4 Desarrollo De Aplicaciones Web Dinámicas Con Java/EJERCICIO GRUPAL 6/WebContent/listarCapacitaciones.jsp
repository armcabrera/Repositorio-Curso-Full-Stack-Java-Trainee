<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>Lista capacitaciones</title>
    <link rel="stylesheet" href="Styles.css">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<header>
  <h1> Lista capacitacion</h1>
</header><br>
    <div class="row">

      <main class="main col-11 col-s-12">

            <table class="tablalistarcapa">
              <thead>
              <tr>
                <th>Id de capacitación</th>
                <th>Fecha de capacitación</th>
                <th>Hora de capacitación</th>
                <th> Nombre del cliente</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>001</td>
                  <td>15/11/2020</td>
                  <td>09:00 hrs</td>
                  <td>Marcos</td>
                </tr>
                <tr>
                  <td>002</td>
                  <td>17/05/1940</td>
                  <td>11:00 hrs</td>
                  <td>Benjamin</td>
                </tr>
      
                <tr>
                  <td>003</td>
                  <td>18/01/2020</td>
                  <td>12:00 hrs</td>
                  <td>Pablo</td>
                </tr>
                <tr>
                  <td>004</td>
                  <td>15/07/2020</td>
                  <td>13:00 hrs</td>
                  <td>Macarena</td>
                </tr>
                <tr>
                  <td>005</td>
                  <td>18/08/2000</td>
                  <td>19:30 hrs</td>
                  <td>Mike</td>
                </tr>
      
                <tr>
          <td>006</td>
          <td>19/02/2006</td>
          <td>16:00 hrs</td>
          <td>Karen</td>
                </tr>
          <tr>
            <td>007</td>
            <td>21/10/1999</td>
            <td>18:00 hrs</td>
            <td>Hanna</td>
          </tr>
          <tr>
            <td>008</td>
            <td>17/09/2001</td>
            <td>21:15 hrs</td>
            <td>Bayron</td>
          </tr>
          <tr>
            <td>009</td>
            <td>21/10/2020</td>
            <td>14:00 hrs</td>
            <td>Camila</td>
          </tr>
          <tr>
            <td>010</td>
            <td>09/09/1990</td>
            <td>14:30 hrs</td>
            <td>Cristina</td>
          </tr>
              </tbody>
      
          </table>


      </main>
      
      <main class="main col-1 col-s-12">
       
       <p>Sesion de: ${nombresesion} </p>
      
      </main>

      <main class="main col-7 col-s-12">
         
        <p><a href="<%=request.getContextPath() %>/inicio">Inicio</a>
        
        </p>
        
      </main>

      
   
    </div>
</body>
</html>