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