CREATE DATABASE  Trazabilidad;
DROP DATABASE Trazabilidad;
USE Trazabilidad;

/* CREACIÓN DE TABLAS*/
CREATE TABLE Trazabilidad ( 
   id_trazabilidad INT PRIMARY KEY AUTO_INCREMENT,
   Nombre_Empresa VARCHAR(100) NOT NULL,
   Encargado VARCHAR(100) NOT NULL,
   Fecha_Inicio DATE NOT NULL,
   Fecha_Fin DATE NOT NULL,
   Telefono VARCHAR(20) NOT NULL,
   Correo VARCHAR(100) NOT NULL,
   Estado VARCHAR(50) NOT NULL,
   Fecha_Cierre DATE NOT NULL
);

CREATE TABLE Empresa (
   id_Empresa INT PRIMARY KEY AUTO_INCREMENT,
   Codigo_empresa VARCHAR(100) NOT NULL,
   Nombre_Empresa VARCHAR(100) NOT NULL
);


/* Primero eliminamos la columna id_Empresa*/
ALTER TABLE Empresa DROP COLUMN id_Empresa;
/* Cambiamos el nombre de la columna en Trazabilidad*/
ALTER TABLE Trazabilidad CHANGE Nombre_Empresa codigo_empresa VARCHAR(100);

/*Aseguramos que en Empresa el nombre sea 'codigo_empresa' en minúsculas*/

ALTER TABLE Empresa MODIFY Codigo_empresa VARCHAR(100) NOT NULL;

DESCRIBE Empresa;

/*  INSERCIONES (Ahora sí funcionan sin especificar columnas porque solo hay dos) */

/* Bloque 1*/
INSERT INTO Empresa VALUES ('COD1', 'information workers s.a.s');
INSERT INTO Empresa VALUES ('COD2', 'universidad antonio nariño');
INSERT INTO Empresa VALUES ('COD3', 'ado technologies colombia');
INSERT INTO Empresa VALUES ('COD4', 'yes contact & bpo s.a.s.');
INSERT INTO Empresa VALUES ('COD5', 'koa cia de financiamiento');

/*Bloque 2*/
INSERT INTO Empresa (codigo_empresa, Nombre_Empresa) VALUES ('COD6', 'information workers s.a.s');
INSERT INTO Empresa (codigo_empresa, Nombre_Empresa) VALUES ('COD7', 'universidad antonio nariño');
INSERT INTO Empresa (codigo_empresa, Nombre_Empresa) VALUES ('COD8', 'ado technologies colombia');
INSERT INTO Empresa (codigo_empresa, Nombre_Empresa) VALUES ('COD9', 'yes contact & bpo s.a.s.');
INSERT INTO Empresa (codigo_empresa, Nombre_Empresa) VALUES ('COD10', 'koa cia de financiamiento');

/*. CONSULTA Y CARGA MASIVA*/
SELECT * FROM Empresa;

INSERT INTO Empresa(codigo_empresa, Nombre_Empresa)
 VALUES ('COD11', 'information workers s.a.s'),
('COD12', 'universidad antonio nariño'),
('COD13', 'ado technologies colombia'),
('COD14', 'yes contact & bpo s.a.s.'),
('COD15', 'koa cia de financiamiento');