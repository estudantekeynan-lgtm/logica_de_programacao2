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
CREATE Table produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)   not NULL,
    preco DECIMAL (10,2) not NULL,
    ativo BOOLEAN not NULL DEFAULT true,
    id_categoria INT not NULL,
    constraint fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria) 
);

CREATE Table pedido(
    id_pedido int PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME not NULL,
    status_pedido ENUM('ABERTO','PREPARANDO','FINALIZADO','CANCELADO') NOT NULL,
    valor_total DECIMAL (10,2) not NULL DEFAULT 0.00,
    id_cliente int NOT NULL,
    constraint fk_pedido_clientes FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE Table item_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL (10,2) not NULL,
    obeservacao VARCHAR(150),
    constraint fk_item_pedido FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
    constraint fk_item_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
    
);

CREATE Table forma_pagamento(
    id_forma_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(40) not NULL UNIQUE
);

CREATE Table pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_forma_pagamento int NOT NULL,
    valor DECIMAL(10,2) not NULL,
    data_pagamento DATETIME,
    constraint fk_pagamento_pedido FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
    constraint fk_pagamento_forma_pagamento FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento(id_forma_pagamento)
)




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
INSERT INTo produto (nome,preco,ativo,id_categoria) VALUES
('Café Tradicional',7.00,TRUE,1),
('Refrigerante',5.00,TRUE,2),
('Hambuguer',10.00,true,4),
('Pudim',12.00,true,5),
('Chocolate-quente',15.00,TRUE,3);

INSERT INTO pedido (data_pedido,status_pedido,valor_total,id_cliente) VALUES
('2026-10-02 08:16:00','preparando',0.00,1);
INSERT INTO pedido (data_pedido,status_pedido,valor_total,id_cliente) VALUES
(NOW(),'preparando',0.00,1)



INSERT into categoria (nome) VALUES
('Combos Extras');
SET @categorias_novas = (SELECT nome FROM categoria WHERE nome = 'Combos Extras');
SELECT @categorias_novas;
SELECT * FROM categoria;
SELECT * FROM produto;
SELECT * FROM pedido

INSERT INTO categoria(nome) VALUES
('Cafés'),('Bebidas Geladas'),('Bebidas quentes'),('Salgados'),('Sobrimesa');
INSERT INTO categoria(nome)VALUES
('Doces');

--verificar ultimo dado inserido
set @categoria = LAST_INSERT_ID();
SELECT @categoria




-- Passo 1: realizar cadastro cliente 

INSERT into clientes (nome,email,telefone,cidade,ativo) VALUES ('Carlos Silva','carlos.silva123@gmail.com','199999999','Santos',TRUE);
set @cliente_compra = LAST_INSERT_ID();

INSERT INTO pedido(data_pedido,status_pedido,valor_total,id_cliente) VALUES (NOW(),'Aberto',0.00,@cliente_compra);
SET @pedido_compra = LAST_INSERT_ID();

INSERT INTO item_pedido( id_pedido,id_produto,quantidade,preco_unitario) VALUES(@pedido_compra,4,1,13.00),(@pedido_compra,5,1,9.00);


UPDATE pedido
SET valor_total=22.00,
status_pedido ='Preparando'
WHERE id_pedido = @pedido_compra;

INSERT INTO pagamento(id_pedido,id_forma_pagamento,valor,data_pagamento) VALUES
(@pedido_compra,2,22.00,NOW());


SELECT p.id_pedido,
    c.nome As nome_cliente,
    p.status as status_pedido,
    p.valor_total as compra_total

    FROM pedido p 
    JOIN clientes c ON c.id_cliente = p.id_cliente
    WHERE p.id_pedido = @pedido_compra ;

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

START TRANSACTION;
UPDATE produto
set preco = preco*2.80
WHERE id_categoria = 1 ;

select id_produto, nome , preco
FROM produto
WHERE id_categoria =1;

ROLLBACK;
COMMIT

