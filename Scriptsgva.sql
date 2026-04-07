CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;

CREATE TABLE Trazabilidad ( 
   id_trababilidad INT PRIMARY KEY AUTO_INCREMENT,
   Nombre_Empresa VARCHAR(100) NOT NULL,
   Encagado VARCHAR(100) NOT NULL,
   Fecha_Ini DATE NOT NULL,
   Fecha_Fin DATE NOT NULL,
   Telefono VARCHAR(20) NOT NULL,
   Correo VARCHAR(100) NOT NULL,
   Estado VARCHAR(50)NOT NULL,
   Fecha_Cierre DATE NOT NULL
);

CREATE TABLE Empresa (
   id_Empresa INT PRIMARY KEY AUTO_INCREMENT,
   Codigo_empresa VARCHAR(100) NOT NULL,
   Nombre_Empresa VARCHAR(100) NOT NULL
);


/*Luego eliminamos la restricción de llave primaria*/
ALTER TABLE Empresa 
DROP PRIMARY KEY;
DESCRIBE EMPRESA
   
/* Cambiamos el nombre a mayúsculas*/
ALTER TABLE TRAZABILIDAD
CHANGE Nombre_Empresa CODIGO_EMPRESA VARCHAR(100) ;
DESCRIBE TRAZABILIDAD
   
/* Cambiamos el nombre a minúsculas*/
ALTER TABLE Empresa
CHANGE CODIGO_EMPRESA codigo_empresa VARCHAR(100) ;

DESCRIBE EMPRESA
   
INSERT INTO Empresa 
VALUES ('COD1', 'information workers s.a.s');

INSERT INTO Empresa
VALUES ('COD2', 'universidad antonio nariño');

INSERT INTO Empresa 
VALUES ('COD3', 'ado technologies colombia');

INSERT INTO Empresa 
VALUES ('COD4', 'yes contact & bpo s.a.s.');

INSERT INTO Empresa 
VALUES ('COD5', 'koa cia de financiamiento');



INSERT INTO Empresa (Codigo_empresa, nombre_empresa) 
VALUES ('COD1', 'information workers s.a.s');

INSERT INTO Empresa (Codigo_empresa, nombre_empresa)
VALUES ('COD2', 'universidad antonio nariño');

INSERT INTO Empresa (Codigo_empresa, nombre_empresa)
VALUES ('COD3', 'ado technologies colombia');

INSERT INTO Empresa (Codigo_empresa, nombre_empresa) 
VALUES ('COD4', 'yes contact & bpo s.a.s.');

INSERT INTO Empresa (Codigo_empresa, nombre_empresa)
VALUES ('COD5', 'koa cia de financiamiento');

SELECT * FROM Empresa;
INSERT INTO Empresa (Codigo_empresa, codigo_empresa) 
VALUES 
('COD1', 'information workers s.a.s'),
('COD2', 'universidad antonio nariño'),
('COD3', 'ado technologies colombia'),
('COD4', 'yes contact & bpo s.a.s.'),
('COD5', 'koa cia de financiamiento');
