--CONSULTA 1

SELECT IDENTIFICADOR, HORA, DIA, RUTCLIENTE FROM CAPACITACION ;

--CONSULTA 2

SELECT * FROM CAPACITACION WHERE DURACION = 60 AND CANTIDADASISTENTES > 30;

--CONSULTA 3

SELECT * FROM CAPACITACION WHERE RUTCLIENTE IN ('1-9','2-7') AND LUGAR= 'LA FLORIDA';

--CONSULTA 4

SELECT * FROM CAPACITACION WHERE DURACION BETWEEN 30 AND 90 OR CANTIDADASISTENTES < 10;

--CONSULTA 5

SELECT * FROM CAPACITACION WHERE (DIA IN ('LUNES','MIERCOLES','VIERNES')) AND CANTIDADASISTENTES > 50 AND DURACION < 30;

