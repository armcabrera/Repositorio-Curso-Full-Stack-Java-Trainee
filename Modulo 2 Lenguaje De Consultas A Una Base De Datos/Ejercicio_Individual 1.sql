
--CONSULTA 1

SELECT * FROM VENTAS WHERE cantarticulos > 2;

--CONSULTA 2

SELECT idventa, comprador,cantarticulos FROM VENTAS WHERE subtotal < 1000; 

--CONSULTA 3

SELECT total,impuesto,subtotal,cantarticulos,vendedor,comprador,idventa FROM VENTAS WHERE vendedor = 'Sonia Garrido' AND total >= 5000;

--CONSULTA 4

SELECT VENDEDOR, COMPRADOR, TOTAL FROM VENTAS WHERE COMPRADOR = 'Lucas' OR VENDEDOR = 'Maria';

--CONSULTA 5

SELECT * FROM VENTAS WHERE IDVENTA IN (2,5,6,9);
