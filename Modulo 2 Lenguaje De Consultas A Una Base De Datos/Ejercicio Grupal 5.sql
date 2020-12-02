-- CONSULTA 1

--CREAMOS LA TABLA CLIENTE

CREATE TABLE CLIENTE (
RUTCLIENTE NUMBER(9) PRIMARY KEY,
NOMBRES VARCHAR2(30) NOT NULL,
APELLIDOS VARCHAR2(30) NOT NULL,
TELEFONO  VARCHAR2(20) NOT NULL,
AFP  VARCHAR2(30),
SISTEMASALUD NUMBER(2),
DIRECCION  VARCHAR2(70),
COMUNA  VARCHAR2(50),
EDAD NUMBER(3) NOT NULL );


--CREAMOS LA TABLA ACCIDENTE

CREATE TABLE ACCIDENTE(
ACCIDENTEID NUMBER(9) PRIMARY KEY,
DIA DATE,    
HORA DATE,
LUGAR VARCHAR2(50) NOT NULL,
ORIGEN VARCHAR2(100),
CONSECUENCIAS  VARCHAR2(100),
CLIENTE_RUTCLIENTE NUMBER(9) NOT NULL);



--CREAMOS LA TABLA CAPACITACION

CREATE TABLE CAPACITACION (
IDCAPACITACION NUMBER(9) PRIMARY KEY,
FECHA DATE,
HORA DATE,
LUGAR VARCHAR2(50) NOT NULL,
DURACION NUMBER(3),
CANTIDADASISTENTES NUMBER(5) NOT NULL,
CLIENTE_RUTCLIENTE NUMBER(9) NOT NULL);


--CREAMOS LA TABLA ASISTENTES

CREATE TABLE ASISTENTES (
IDASISTENTE NUMBER(9) PRIMARY KEY,
NOMBRES VARCHAR2(100) NOT NULL,
EDAD NUMBER(3) NOT NULL,
CAPACITACION_IDCAPACITACION NUMBER(9) NOT NULL);




-- CONSULTA 2

ALTER TABLE ACCIDENTE ADD CONSTRAINT ACCIDENTE_CLIENTE_FK FOREIGN KEY ( CLIENTE_RUTCLIENTE) REFERENCES CLIENTE (RUTCLIENTE);

ALTER TABLE CAPACITACION ADD CONSTRAINT CAPACITACION_CLIENTE_FK FOREIGN KEY (CLIENTE_RUTCLIENTE) REFERENCES CLIENTE (RUTCLIENTE);

ALTER TABLE ASISTENTES ADD CONSTRAINT ASISTENTES_CAPACITACION_FK FOREIGN KEY ( CAPACITACION_IDCAPACITACION ) REFERENCES CAPACITACION ( IDCAPACITACION );



-- CONSULTA 3


ALTER TABLE CLIENTE ADD CONSTRAINT UK_TELEFONO UNIQUE (TELEFONO);

-- CONSULTA 4

ALTER TABLE CLIENTE ADD CONSTRAINT CK_SISTEMASALUD CHECK (SISTEMASALUD IN(1,2));

-- CONSULTA 5




-- INSERTAMOS LOS REGISTROS DE LA TABLA CLIENTES

INSERT INTO CLIENTE VALUES (112549872,'JUAN ANDRES','PEREZ CUEVAS',988445566,'MODELO',1,'LOS OLMOS 345','SANTIAGO',70);
INSERT INTO CLIENTE VALUES (150004786,'VICTOR HUGO','VENEGAS JORQUERA',944779966,'HABITAD',2,'LAS REJAS 2425','LA FLORIDA',30);
INSERT INTO CLIENTE VALUES (136980123,'MARCELA AGUSTINA','FLORES ANDRADE',900021144,'CUPRUM',1,'VICU�A MACKE��A 147','TALCA',42);
INSERT INTO CLIENTE VALUES (162450011,'FERNANDA JOSEFA','PUEBLA DONOSO',999771122,'PROVIDA',2,'LOS SAUCES 4745','ARICA',22);


-- INSERTAMOS LOS REGISTROS DE LA TABLA ACCIDENTE

INSERT INTO ACCIDENTE VALUES (1,TO_DATE ('14/02/2020','DD/MM/YYYY'),TO_DATE ('12:00','HH24:MI'),'EN LA EMPRESA','LABORAL','MUERTE',112549872);
INSERT INTO ACCIDENTE VALUES (2,TO_DATE ('15/03/2020','DD/MM/YYYY'),TO_DATE ('15:00','HH24:MI'),'CAMINO A CASA','TRAYECTO','MUERTE',112549872); 
INSERT INTO ACCIDENTE VALUES (3,TO_DATE ('16/04/2020','DD/MM/YYYY'),TO_DATE ('13:00','HH24:MI'),'EN EL PATIO','LABORAL','MUERTE',150004786);
INSERT INTO ACCIDENTE VALUES (4,TO_DATE ('17/05/2020','DD/MM/YYYY'),TO_DATE ('12:00','HH24:MI'),'EN EL PARADERO','TRAYECTO','MUERTE',150004786);
INSERT INTO ACCIDENTE VALUES (5,TO_DATE ('18/06/2020','DD/MM/YYYY'),TO_DATE ('11:00','HH24:MI'),'EN EL CASINO','LABORAL','MUERTE',136980123);
INSERT INTO ACCIDENTE VALUES (6,TO_DATE ('19/07/2020','DD/MM/YYYY'),TO_DATE ('17:00','HH24:MI'),'EN LA OFICINA','TRAYECTO','MUERTE',136980123);
INSERT INTO ACCIDENTE VALUES (7,TO_DATE ('20/08/2020','DD/MM/YYYY'),TO_DATE ('18:00','HH24:MI'),'SALIDA DE CASA','TRAYECTO','MUERTE',162450011);