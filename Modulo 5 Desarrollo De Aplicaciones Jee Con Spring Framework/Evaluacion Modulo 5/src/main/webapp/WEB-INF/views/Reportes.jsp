<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	 <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	

    <link rel="stylesheet" href="resources/css/Hojaestilos.css">
	    <link rel="icon" href="resources/imagenes/favicon.ico">
    <script src="https://www.chartjs.org/dist/2.9.4/Chart.min.js"></script>
    <script src="https://www.chartjs.org/samples/latest/utils.js"></script>
     	<script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/logout.js'></script>
    <title>Reportes</title>
</head>
<body>
	<form name="formcerrar" action='<c:out value="${pageContext.request.contextPath}" />/logout'>
	        <input type="button" value="Cerrar Sesion" onclick="enviar()" />
	</form>
 <header>
            <h1>Reportes</h1>
        </header>
	
	<div class="row">
	
	
	
	<main class="main col-9 col-s-12">
	
	<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
       Grafico De Barras
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      <div id="container" style="width: 50%;">
            
            <canvas id="canvas"></canvas>

        </div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
       Grafico De Lineas
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
          <div id="container2" style="width: 50%;">
            
            <canvas id="myChart"></canvas>
        </div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
       Grafico De Torta
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <div id="container3" style="width: 50%;">
           
            <canvas id="myChart2"></canvas>
        </div>
      </div>
    </div>
  </div>
</div>
	
	
	
	</main>
	
	

		
      

        <script>
            var MONTHS = ['Comuna 1', 'Comuna 2', 'Comuna 3', 'Comuna 4'];
            var color = Chart.helpers.color;
            var barChartData = {
                labels: ['Comuna 1', 'Comuna 2', 'Comuna 3', 'Comuna 4'],
                datasets: [{
                    label: 'Clientes',
                    backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.red,
                    borderWidth: 1,
                    data: [15, 26, 30, 90, 0]
                }]

            };

            window.onload = function () {
                var ctx = document.getElementById('canvas').getContext('2d');
                window.myBar = new Chart(ctx, {
                    type: 'bar',
                    data: barChartData,
                    options: {

                        responsive: true,
                        legend: {
                            position: 'top',
                        },

                    }
                });

            };

            var ctx = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'line',

                data: {
                    labels: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],

                    datasets: [{
                        label: ' Cantidad de accidente',
                        data: [12, 19, 3, 5, 2, 3, 8, 13, 11, 7, 5, 10, 0],

                        backgroundColor: ["transparent"],
                        borderColor: ["red"],
                        borderWidth: 1
                    }, {
                        label: ' Cantidad de visitas',
                        data: [10, 12, 6, 9, 7, 3, 9, 15, 17, 14, 8, 10],

                        backgroundColor: ["transparent"],
                        borderColor: ["orange"],
                        borderWidth: 1
                    }
                    ],

                },

                options: {
                    responsive: true,
                    legend: {
                        position: 'top',
                    },
        
                }
            });

            var ctx = document.getElementById('myChart2').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['chequeos de visitas cumplidos', 'no cumplidos', 'cumplidos con observación'],

                    datasets: [{
                        label: ' Grafico de torta',
                        data: [5, 2, 3],
                        backgroundColor: ["green", 'red', 'yellow'],

                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    legend: {
                        position: 'top',
                    },
     


                }
            });
        </script>
	
	
	
	
	
	<main class="main col-3 col-s-12 alingderecha">
	
		<a href="Linkindex">Volver Inicio</a>
	
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