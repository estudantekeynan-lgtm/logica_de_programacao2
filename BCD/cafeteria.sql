CREATE DATABASE cafeteria;

CREATE Table clientes(
    CPF VARCHAR (14) PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR (100),
    data_nascimento DATE,
    endereco VARCHAR (100)
);

CREATE Table produtos(
    num_pedido INT PRIMARY KEY,
    hora  DATE TIME,
    nome VARCHAR (100),
    

);

CREATE Table entrega(
    num_entrega INT PRIMARY KEY,
    hora DATE TIME,
    
)
