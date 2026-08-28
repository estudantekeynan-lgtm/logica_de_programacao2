CREATE DATABASE Oficina_Keynan;

use Oficina_Keynan;

CREATE Table if not exists clientes(
    Id_cliente int auto_increment primary key,
    nome_cliente varchar(50) not null,
    CPF varchar(14) unique not null,
    Data_cadastro timestamp,
    email_cliente varchar(50),
    telefone varchar(15) not null





);


CREATE Table if not exists veiculos(
    id_veiculo int auto_increment primary key,
    tipo_veiculo varchar(50) not null,
    preco_veiculo DECIMAL(6,2) not NULL,
    Marca_veiculo varchar(50) not null,
    Modelo_veiculo varchar(50) not null,
    nome_veiculo varchar(50) not null


);


CREATE Table if not exists marcas(
    id_marca int auto_increment primary key,
    nome_marca varchar(50) not null,
    Nacionalida_marca varchar(25) not null,
    Telefone_marca varchar(15) not null,
    email_marca varchar(50) not null,
    Classificacao_marca varchar(50) not null
);

create table if not exists modelos(
    Id_modelo int auto_increment primary key,
    nome_modelo varchar(50) not null,
    marca varchar(50) not null,
    preco_modelo DECIMAL(6,2) not NULL,
    cor_modelo varchar(50) not null,
    tipo_modelo varchar(50) not null
);
 
CREATE  Table if not exists funcionarios(
    Id_funcionario int auto_increment primary key,
    nome_funcionario varchar(50) not null,
    telefone_funcionario varchar(15) not null,
    salario_funcionario DECIMAL(5,2) not NULL,
    horas_trabalhadas time not NULL,
    setor varchar(50) not null
);


CREATE Table if not exists servicos(
    Id_servico int auto_increment primary key,
    setor varchar(50) not null,
    Hora time not null,
    tipo_serv varchar(50) not null,
    tempo_serv time not null,
    preco DECIMAL(6,2) not null 
); 


CREATE Table if not exists pecas(
    Id_peca int auto_increment primary key,
    tipo_peca varchar(50) not null,
    tamanho_peca varchar(50) not null,
    peso_peca FLOAT not NULL,
    preco_peca DECIMAL(5,2),
    fornecedora_peca varchar(50) not null
);

CREATE TABLE if not exists ordens_servico(
    Id_ordem int auto_increment primary key,
    nome_responsavel varchar(50) not null,
    tempo_gasto DATEtime not NULL,
    custo DECIMAL(5,2) not null,
    preco DECIMAL(5,2) not null,
    Hora_solicitacao time not null
);

 
CREATE Table pagamentos(
    Id_transacao int auto_increment primary key,
    nome_pagante varchar(50) not null,
    hora_pagamento time not null,
    valor DECIMAL(5,2),
    metodo varchar(50) not null,
    motivo_pagamento varchar(150) 
 );

CREATE Table fornecedores(
    Id_fornecedor int auto_increment primary key,
    nome_fornecedor varchar(50) not null,
    localizacao varchar(50) not null,
    email varchar(50) ,
    cnpj varchar(14) unique not null,
    telefone varchar(14)  not null
);
alter table modelos add ano_fabricacao year not null;

alter table modelos drop ano_fabricacao;
rename table modelos to modelos_fab


