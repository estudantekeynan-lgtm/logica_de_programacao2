-- Active: 1788519229089@@127.0.0.1@3306@sesi_cr_ta
-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.
-- Relacionamentos e cardinalidades banco de dados exemplo

CREATE DATABASE if not exists SESI_CR_TA;

use SESI_CR_TA;

CREATE TABLE Cliente (
nome_cliente varchar(60) not null,
Id_Cliente int primary key auto_increment PRIMARY KEY
);

CREATE TABLE Pedido (
Id_pedido int primary key auto_increment PRIMARY KEY,
Data_pedido datetime not null,
Id_Cliente int not null,
FOREIGN KEY(Id_Cliente) REFERENCES Cliente (Id_Cliente)
);

CREATE TABLE estoque (
Nome_produto varchar(60) not null,
Id_produto int not null unique,
Qtd int not null,
Id_estoque int primary key auto_increment
-- PRIMARY KEY(Id_produto,Id_estoque)
);

CREATE TABLE Forncedor (
Id_forncedor int primary key auto_increment PRIMARY KEY,
Razao_social Varchar(60) not null
);

CREATE TABLE Produto (
Id_produto int primary key auto_increment PRIMARY KEY,
Nome_produto varchar(60) not null
);



CREATE TABLE Item_produto (
Id_forncedor int not null ,
Id_produto int not null,
Id_item int primary key auto_increment PRIMARY KEY,
Valor decimal(10,2),
observacao text(300),
FOREIGN KEY(Id_forncedor) REFERENCES Forncedor (Id_forncedor),
FOREIGN KEY(Id_produto) REFERENCES Produto (Id_produto)
);

