
--CONSULTA 1

SET AUTOCOMMIT ON


--CONSULTA 2

INSERT INTO CLIENTES (NOMBRES,APELLIDOS,DIRECCION,TELEFONO) VALUES ('Hernan','Torres','Los Sauces #1478',944533277);

INSERT INTO VENTAS (IDVENTA,CANTARTICULOS,SUBTOTAL,IMPUESTO,TOTAL,CLIENTES_IDCLIENTE) VALUES (11,1,3300,700,4000,12);

--CONSULTA 3

SET AUTOCOMMIT OFF

--CONSULTA 4

DELETE FROM VENTAS WHERE IDVENTA = 11

--CONSULTA 5

ROLLBACK;
