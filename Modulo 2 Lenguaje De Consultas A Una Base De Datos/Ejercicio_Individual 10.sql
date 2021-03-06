

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

ALTER TABLE VENTAS ADD CONSTRAINT VENTAS_CLIENTES_FK FOREIGN KEY ( CLIENTES_IDCLIENTE ) REFERENCES CLIENTES ( IDCLIENTE );


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

-- INSERTAMOS REGISTROS A LA TABLA CLIENTES

INSERT INTO CLIENTES VALUES (1,'Antonia','Aranda','Calle Los Aromos #123',991111111); 
INSERT INTO CLIENTES (IDCLIENTE,NOMBRES,APELLIDOS) VALUES (2,'Bernarda','Barros'); 
INSERT INTO CLIENTES VALUES (3,'Carlos','Costa','Avenida Sim�n Bolivar #789',993333333); 


-- INSERTAMOS REGISTROS A LA TABLA VENTAS

INSERT INTO VENTAS VALUES (1,'Andr�s Aranda',3,4500,500,5000,1);
INSERT INTO VENTAS (IDVENTA,CANTARTICULOS,SUBTOTAL,IMPUESTO,TOTAL,CLIENTES_IDCLIENTE) VALUES (2,2,1200,100,1400,1); 
INSERT INTO VENTAS VALUES (3,'Cristina Cort�s',3,10480,20,10500,2); 
INSERT INTO VENTAS VALUES (4,'Daniela Dur�n',1,5000,2500,7500,2); 
INSERT INTO VENTAS (IDVENTA,CANTARTICULOS,SUBTOTAL,IMPUESTO,TOTAL,CLIENTES_IDCLIENTE) VALUES (5,3,3800,100,4000,3);


--CONSULTA 1

ALTER TABLE PRODUCTO ADD CONSTRAINT UK_NOMBREPROD UNIQUE (NOMBREPROD);

--CONSULTA 2

CREATE SEQUENCE SEQ_IDPRODUCTO


CREATE OR REPLACE TRIGGER IDPRODUCTO_TRI
BEFORE INSERT ON PRODUCTO
FOR EACH ROW
WHEN (NEW.IDPRODUCTO IS NULL)
BEGIN
SELECT SEQ_IDPRODUCTO.NEXTVAL
INTO :NEW.IDPRODUCTO
FROM DUAL;
END;
/

--CONSULTA 3

INSERT INTO PRODUCTO VALUES (NULL,'AZUCAR',500);
INSERT INTO PRODUCTO VALUES (NULL,'ARROZ',700);
INSERT INTO PRODUCTO VALUES (NULL,'FIDEOS',300);
INSERT INTO PRODUCTO VALUES (NULL,'CAFE',3000);

--CONSULTA 4

INSERT INTO DETALLEVENTA VALUES(1,1,5);
INSERT INTO DETALLEVENTA VALUES(2,2,6);
INSERT INTO DETALLEVENTA VALUES(3,3,4);
INSERT INTO DETALLEVENTA VALUES(4,4,3);
INSERT INTO DETALLEVENTA VALUES(5,1,7);
INSERT INTO DETALLEVENTA VALUES(1,2,9);
INSERT INTO DETALLEVENTA VALUES(2,3,8);
INSERT INTO DETALLEVENTA VALUES(3,4,6);

--CONSULTA 5

COMMIT;
