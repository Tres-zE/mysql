CREATE DATABASE jugos;

DROP SCHEMA jugos;

SELECT * FROM city;

USE jugos2;
CREATE TABLE TBCLIENTES(
DNI varchar(20),
NOMBRE varchar(150),
DIRECCION1 varchar(150),
DIRECCION2 varchar(150),
BARRIO varchar(50),
CIUDAD varchar(50),
ESTADO varchar(50),
CP varchar(10),
EDAD smallint,
SEXO varchar(1),
LIMITE_CREDITO float,
VOLUMEN_COMPRA float,
PRIMERA_COMPRA BIT(1)
);

CREATE TABLE TABLA_DE_VENDEDORES (
    MATRICULA varchar(5), 
    NOMBRE varchar(100), 
    PORCENTAJE_COMISION float);

INSERT INTO TABLA_DE_VENDEDORES
(MATRICULA, NOMBRE, PORCENTAJE_COMISION)
VALUES
('00233', 'Joan Geraldo de la Fonseca', 0.10);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('695594', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1041119', 'Línea Citrus', 'Botella de Vidrio',
'700 ml', 'Lima', 4.90);

SELECT * FROM TBPRODUCTOS;

INSERT INTO TABLA_DE_VENDEDORES
(MATRICULA, NOMBRE, PORCENTAJE_COMISION)
VALUES
 ('00235','Márcio Almeida Silva',0.08);

INSERT INTO TABLA_DE_VENDEDORES
(MATRICULA, NOMBRE, PORCENTAJE_COMISION)
VALUES
('00236','Cláudia Morais',0.08);

UPDATE tbproductos SET precio = 28.51
WHERE producto = '695504';

UPDATE tbproductos SET sabor = 'Lima/Limon'
WHERE producto = '1041119';

UPDATE TABLA_DE_VENDEDORES SET PORCENTAJE_COMISION = 0.11
WHERE MATRICULA = '00236';

UPDATE TABLA_DE_VENDEDORES SET NOMBRE = 'Joan Geraldo de la Fonseca Junior'
WHERE MATRICULA = '00233';

SELECT * FROM tabla_de_vendedores;

DELETE FROM TABLA_DE_VENDEDORES WHERE MATRICULA = '00233';

ALTER TABLE tbproductos ADD primary key (producto);

