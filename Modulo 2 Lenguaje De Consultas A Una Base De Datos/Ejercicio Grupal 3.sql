
-- CONSULTA 1


CREATE SEQUENCE SEQUENCE_CAPACITACION
 START WITH     1515
 INCREMENT BY   1;

CREATE OR REPLACE TRIGGER  CAPACITACION_TRI
BEFORE INSERT ON capacitacion
FOR EACH ROW
WHEN (new.idcapacitacion IS NULL)
BEGIN
 SELECT SEQUENCE_CAPACITACION.NEXTVAL
 INTO :new.idcapacitacion
 FROM dual;
END;
/

CREATE SEQUENCE SEQUENCE_ASISTENTES
 START WITH     11
 INCREMENT BY   1;
 
 CREATE OR REPLACE TRIGGER  ASISTENTES_TRI
BEFORE INSERT ON ASISTENTES
FOR EACH ROW
WHEN (new.IDASISTENTE IS NULL)
BEGIN
 SELECT SEQUENCE_ASISTENTES.NEXTVAL
 INTO :new.IDASISTENTE
 FROM dual;
END;
/
-- CONSULTA 2

INSERT INTO CAPACITACION (RUTCLIENTE,LUGAR,DURACION,CANTIDADASISTENTES) VALUES ('45677645-6','VALPARA�SO',45,20);
INSERT INTO CAPACITACION (RUTCLIENTE,DIA,HORA,LUGAR,DURACION) VALUES ('32432335-3','LUNES','18:00','TEMUCO',60);
INSERT INTO CAPACITACION (RUTCLIENTE,LUGAR,DURACION,CANTIDADASISTENTES) VALUES ('56765345-9','VALDIVIA',30,40);


-- CONSULTA 3

INSERT INTO ASISTENTES VALUES ('VIOLETO PARRA',22,1510);
INSERT INTO ASISTENTES VALUES ('APPA CUCHI',45,1516);
INSERT INTO ASISTENTES VALUES ('PEDRO PICAPIEDRAS',40,1511);
INSERT INTO ASISTENTES VALUES ('PABLO MARMOL',34,1518);
INSERT INTO ASISTENTES VALUES ('NICANOR PARRA',70,1512);

-- CONSULTA 4

ALTER TABLE ASISTENTES ADD CONSTRAINT
UK_NOMBRES
UNIQUE (NOMBRES);


-- CONSULTA 5

UPDATE CAPACITACION SET DIA = '01/01/2020', HORA = '00:00' WHERE DIA IS NULL AND HORA IS NULL;

-- CONSULTA 6

DELETE FROM CAPACITACION WHERE cantidadasistentes=0 AND IDCAPACITACION IN (SELECT CAPACITACION.IDCAPACITACION FROM CAPACITACION 
LEFT JOIN ASISTENTES ON CAPACITACION.IDCAPACITACION = ASISTENTES.CAPACITACION_IDCAPACITACION
WHERE ASISTENTES.CAPACITACION_IDCAPACITACION IS NULL);