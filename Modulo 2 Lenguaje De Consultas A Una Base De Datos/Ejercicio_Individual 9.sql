--CONSULTA 1

-- CREAMOS LA TABLA CLIENTES

CREATE TABLE CLIENTES ( 
IDCLIENTE NUMBER PRIMARY KEY, 
NOMBRES VARCHAR2(50) NOT NULL, 
APELLIDOS VARCHAR2(50) NOT NULL, 
DIRECCION VARCHAR2(70), 
TELEFONO NUMBER ); 

-- CREAMOS LA TABLA VENTAS

CREATE TABLE VENTAS ( 
IDVENTA NUMBER PRIMARY KEY, 
VENDEDOR VARCHAR2(50), 
CANTARTICULOS NUMBER NOT NULL, 
SUBTOTAL NUMBER NOT NULL, 
IMPUESTO NUMBER NOT NULL, 
TOTAL NUMBER NOT NULL, 
CLIENTES_IDCLIENTE NUMBER NOT NULL );


-- CREAMOS LA TABLA PRODUCTO

CREATE TABLE PRODUCTO (
IDPRODUCTO NUMBER PRIMARY KEY,
NOMBREPROD VARCHAR2(50) NOT NULL,
VALOR NUMBER NOT NULL);


-- CREAMOS LA TABLA DETALLEVENTA

CREATE TABLE DETALLEVENTA (
VENTAS_IDVENTA NUMBER CONSTRAINT DETALLEVENTA_FK1 REFERENCES VENTAS, 
PRODUCTO_IDPRODUCTO NUMBER CONSTRAINT DETALLEVENTA_FK2 REFERENCES PRODUCTO,
CANTIDAD NUMBER,
CONSTRAINT DATALLEVENTA_PK PRIMARY KEY(VENTAS_IDVENTA,PRODUCTO_IDPRODUCTO));


--CONSULTA 2

ALTER TABLE VENTAS ADD CONSTRAINT VENTAS_CLIENTES_FK FOREIGN KEY ( CLIENTES_IDCLIENTE ) REFERENCES CLIENTES ( IDCLIENTE ); 

--CONSULTA 3

INSERT INTO CLIENTES VALUES (1,'Antonia','Aranda','Calle Los Aromos #123',991111111); 
INSERT INTO CLIENTES (IDCLIENTE,NOMBRES,APELLIDOS) VALUES (2,'Bernarda','Barros'); 
INSERT INTO CLIENTES VALUES (3,'Carlos','Costa','Avenida Sim�n Bolivar #789',993333333); 

--CONSULTA 4

INSERT INTO VENTAS VALUES (1,'Andr�s Aranda',3,4500,500,5000,1);
INSERT INTO VENTAS (IDVENTA,CANTARTICULOS,SUBTOTAL,IMPUESTO,TOTAL,CLIENTES_IDCLIENTE) VALUES (2,2,1200,100,1400,1); 
INSERT INTO VENTAS VALUES (3,'Cristina Cort�s',3,10480,20,10500,2); 
INSERT INTO VENTAS VALUES (4,'Daniela Dur�n',1,5000,2500,7500,2); 
INSERT INTO VENTAS (IDVENTA,CANTARTICULOS,SUBTOTAL,IMPUESTO,TOTAL,CLIENTES_IDCLIENTE) VALUES (5,3,3800,100,4000,3);

--CONSULTA 5

COMMIT;
