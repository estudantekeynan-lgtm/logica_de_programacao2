-- Active: 1788519229089@@127.0.0.1@3306@smartcoffee_keynan
-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.
CREATE DATABASE if not EXISTS SmartCoffee_Keynan

use SmartCoffee_Keynan


CREATE TABLE Estoque (
Unidade_medida varchar(2) not null,
quantidade_atual int not null,
quantidade_minima int not null,
nome_insumo varchar(50) not null,
ID_insumo int PRIMARY KEY   auto_increment 
)

CREATE TABLE Produtos (
preco_unitario numeric not null,
nome varchar (30) not null,
descricao varchar (50) not null ,
categoria varchar(30)  not null,
ID_produtos int PRIMARY KEY auto_increment 
)

CREATE TABLE Pedidos (
status_pedido boolean default True not null ,
Valor_pedido DECIMAL(10,2) NOT NULL,
Hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Id_pedido int auto_increment primary key unique,
Tipo_pedido varchar(50) not null)


create TABLE clientes(
telefone varchar (14) not null ,
CPF Varchar (14) unique not null,
Email varchar (60) not null unique ,
data_cadastro_cliente datetime not null,
Id_cliente int PRIMARY KEY auto_increment)

create TABLE programa_fidelidade(
CPF varchar(14) not null,
Dadata_cadastro date not null,
pontos int ,
id_fidelidade int PRIMARY KEY auto_increment )

create table pagamentos(
Nome_Pagante varchar(50) not null,
valor_pagamento decimal (3,2) not null,
data_hora_pagamento datetime not null,
Forma_pagamento varchar(50) not null,
id_pagamento int PRIMARY KEY auto_increment ,


status_pagamento boolean default False not null)
-- PRIMARY KEY(Id_pedido,Id_cliente,id_fidelidade,id_pagamento)
-- )

CREATE TABLE Fornecedor (
Id_compra int auto_increment PRIMARY KEY,
localizacao varchar(50) not null,
preco decimal not null,
data_ datetime not null,
tamanho decimal not null,
entrega varchar(50) not null,
ID_insumo int not null,
Foreign Key (ID_insumo) REFERENCES Estoque (ID_insumo)
)


CREATE TABLE Categoria (
id_categoria int auto_increment primary key PRIMARY KEY,
tamanho decimal not null,
tipo_produto varchar(50) not null,
Marca varchar(50) not null,
setor varchar(50) not null,
qtd_estoque int not null
)

CREATE TABLE Funcionarios (
data_admissao date not null,
Cargo varchar(50) not null,
ID_funcionarios int auto_increment primary key PRIMARY KEY,
Nome varchar(50) not null,
Cpf Varchar (14) unique not null,
salario decimal(12,2) not null
)

CREATE TABLE Delivery (
ID_delivery int PRIMARY KEY AUTO_INCREMENT,
Endereco_entrega varchar(50) not null,
taxa_entrega decimal (3,2) not null,
tipo_pedido varchar(50) not null,
data_hora datetime not null,
status_delivery boolean default True not null
)

CREATE TABLE Ficha_T�cnica (
id_ficha INT PRIMARY KEY AUTO_INCREMENT,
quantidade_gasta int NOT NULL

)

CREATE TABLE item_Pedido (
id_item_pedido INT PRIMARY KEY AUTO_INCREMENT,
Quantidade int NOT NULL,
Preco_historico int NOT NULL
)

CREATE TABLE realiza (
Id_pedido int not null,
Id_cliente int PRIMARY KEY AUTO_INCREMENT,
Foreign Key (Id_pedido) REFERENCES Pedidos (Id_pedido)
)

CREATE TABLE atende (
Id_cliente int auto_increment  PRIMARY KEY,
id_fidelidade int not null,
id_pagamento int not null,
ID_funcionarios int not null,
Foreign Key (id_fidelidade) REFERENCES programa_fidelidade (id_fidelidade),
Foreign Key (id_pagamento) REFERENCES pagamentos (id_pagamento),
Foreign Key (ID_funcionarios) REFERENCES Funcionarios (ID_funcionarios)
)





