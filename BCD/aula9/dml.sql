-- Active: 1788519229089@@127.0.0.1@3306@smartcoffee_dml_keynan
DROP DATABASE IF exists SmartCoffee_DML_Keynan

CREATE DATABASE  if not EXISTS SmartCoffee_DML_Keynan;

use SmartCoffee_DML_Keynan;

CREATE Table clientes(
    id_cliente int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) not NULL,
    email varchar (60) not null unique,
    telefone varchar (14)  ,
    cidade VARCHAR (60) NOT NULL,
    ativo BOOLEAN not NULL DEFAULT TRUE
);
CREATE Table categoria(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (60) not NULL UNIQUE
);
--Inserindo dados no BD

INSERT INTO clientes(nome,email,telefone,cidade,ativo) VALUES
('Arthur Nunes','arthur@email.com','19999901','Rondonia',TRUE),
('Beatriz Raissa','beatriz@email.com','19999902','Limeira',TRUE),
('Dandara Dias','dandara@email.com','19999903','Limeira',TRUE),
('Davi Ferreira','davi@email.com',NULL,'Limeira',TRUE),
('Felipe Rodrigues','felipe@email.com','19999903','Limeira',TRUE),
('Francisco Magri','chico@email.com','19999904','Limeira',TRUE),
('Franz Kramer','franz@email.com','19999905','Limeira',TRUE),
('Gabriel Nogueira','gabriel@email.com','19999906','Limeira',TRUE),
('Gabrielli Araujo','gabrielli@email.com','19999907','Limeira',TRUE),
('Isabella ALves','isa@email.com',NULL,'Limeira',TRUE),
('Keynan Santos','keynan@email.com','19999909','Limeira',TRUE),
('Larissa Ramires','larissa@email.com','19999902','Limeira',TRUE),
('Leonardo dias','leo@email.com','19999902','Limeira',TRUE),
('Luana Galdino','luana@email.com','19999990','Limeira',TRUE),
('Luccas Manfredi','luccas@email.com','19999902','Limeira',TRUE),
('Livia Stein','livia@email.com','19999902','Limeira',TRUE);




INSERT INTO categoria(nome) VALUES
('Cafés'),('Bebidas Geladas'),('Bebidas quentes'),('Salgados'),('Sobrimesa');
INSERT INTO categoria(nome)VALUES
('Doces');

--verificar ultimo dado inserido
set @categoria = LAST_INSERT_ID();
SELECT @categoria
----------------------------------------------------
--Atualizando dados ou modificando no bd

-- Lembrar de sempre executar o select para atualizar (Updade)
-- E nunca faça um update sem um "Where"⚠️
--EX1 Modificando valores individuais
UPDATE clientes 
set telefone = '19988880'
WHERE id_cliente = 10
UPDATE clientes






-- EX 2 Mudando varios valores 
UPDATE clientes
set telefone = '190909090',
    cidade = 'Piracicaba'
WHERE id_cliente = 9

-- Apagar dados do BD


DELETE FROM clientes
WHERE id_cliente = 10;



SELECT * FROM clientes
WHERE id_cliente = 9 ;

SELECT *FROM categoria;
-- DROP TABLE categoria;
