CREATE DATABASE if NOT EXISTS Smart_Coffe;
use Smart_Coffe;

CREATE Table if not exists Produtos(
    Id_produtos int AUTO_INCREMENT PRIMARY KEY,
    tamanho_produto FLOAT NOT NULL,
    preco_produto DECIMAL(3,2) not NULL,
    marca_produto VARCHAR(50) not NULL,
    validade_produto DATE NOT NULL,
    tipo_produto VARCHAR(20)
);

CREATE Table if NOT exists pedidos(
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    hora_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    nome_pedido VARCHAR(60) NOT NULL,
    quantida_pedido INT NULL,
    valor_pedido DECIMAL(3,2) NOT NULL
);

CREATE Table if NOT exists clientes(
    Id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Endereco_cliente VARCHAR(100),
    nome_cliente VARCHAR(50) not NULL,
    email_cliente VARCHAR(40),
    telefone_cliente CHAR(15) not NULL,
    Cpf_cliente CHAR(14) NOT NULL UNIQUE
);

CREATE TABLE if not EXISTS programa_Fidelidade(
    Id_cliente int AUTO_INCREMENT PRIMARY KEY,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    nome_cliente VARCHAR(50) not NULL,
    pontos INT ,
    endereco VARCHAR(100) not NULL,
    telefone_cliente CHAR(15) not NULL
);

CREATE TABLE IF not EXISTS estoque(
    Id_produto INT AUTO_INCREMENT PRIMARY KEY,
    Entrada_Saida int not NULL,
    Tamanho_produto FLOAT not NULL,
    Marca_produto VARCHAR(60) not NULL,
    tipo_produto VARCHAR(40) not NULL,
    fornecedor_produto VARCHAR(60) not NULL
);

CREATE TABLE if NOT EXISTS pagamento(
    ID_transicao INT AUTO_INCREMENT PRIMARY KEY,
    descontos int,
    Hora_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MEDOTO_pagamento VARCHAR(15),
    nome_pagamento VARCHAR(60),
    Banco VARCHAR(40)
);

CREATE TABLE if not exists categoria(
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    tamanho FLOAT not NULL,
    tipo_categoria VARCHAR(50) not NULL,
    setor VARCHAR(30) not NULL,
    qtd_estoque FLOAT not NULL,
    marca_categoria VARCHAR(40)
);


CREATE Table if NOT exists fornecedor(
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    localizacao VARCHAR(100) not NULL,
    cnpj  CHAR(15) not NULL UNIQUE,
     email_fornecedor VARCHAR(40),
    telefone_fornecedor CHAR(15) not NULL
);

CREATE TABLE if NOT exists delivery(
    Id_delivery INT AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(100) not NULL,
    nome VARCHAR(50) NOT NULL,
    qtd_delivery int not NULL,
    telefone CHAR(14) NOT NULL,
    codigo_entrega CHAR(4) UNIQUE NOT NULL
);


CREATE TABLE if not exists funcionarios(
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(20) not NULL,
    nome_fun VARCHAR(60) not NULL,
    idade INT NOT NULL,
    cpf VARCHAR(15) not NULL UNIQUE,
    salario DECIMAL(4,2) not NULL
);





