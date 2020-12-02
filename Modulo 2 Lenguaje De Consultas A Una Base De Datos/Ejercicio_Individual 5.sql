
--CONSULTA 1

INSERT INTO clientes VALUES (4,'Ximena','Arancibia','Calle Los Loros #0254',988774455); 
INSERT INTO clientes VALUES (5,'Baltasar','Berrios','Pasaje Jose Lopez #147',944113300); 
INSERT INTO clientes (IDCLIENTE,NOMBRES,APELLIDOS) VALUES (6,'Cesar','Cuevas'); 

--CONSULTA 2

INSERT INTO ventas (idventa, vendedor, cantarticulos, subtotal, impuesto, total, clientes_idcliente) VALUES (6,'Susana Oria',7,4000,300,4600,4);
INSERT INTO ventas (idventa, cantarticulos, subtotal, impuesto, total, clientes_idcliente) VALUES (7,4,200,100,300,4); 
INSERT INTO ventas VALUES (8,'Alan brito',6,15680,1320,17000,5); 
INSERT INTO ventas (idventa, vendedor, cantarticulos, subtotal, impuesto, total, clientes_idcliente) VALUES (9,'Soila Sorda',1,5000,300,5300,5); 
INSERT INTO ventas VALUES (10,'Elba Lazo',9,7800,100,8000,6);

--CONSULTA 3

UPDATE VENTAS SET TOTAL = (SUBTOTAL + IMPUESTO) WHERE TOTAL <> (SUBTOTAL + IMPUESTO);

--CONSULTA 4

DELETE FROM VENTAS WHERE CLIENTES_IDCLIENTE = 4;
DELETE FROM CLIENTES WHERE IDCLIENTE = 4;

