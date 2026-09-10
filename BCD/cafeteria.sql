create database Cafeteria_Keynan3;


use  Cafeteria_Keynan3;

create table funcionarios3(
id_funcionarios3 int auto_increment primary key,
setor_funcionarios3 VARCHAR(50) NOT NULL,
nome_funcionarios3 VARCHAR(60) not NULL,
CPF VARCHAR(14) not NULL UNIQUE,
email varchar (60) not NULL ,
telefone VARCHAR (15) NOT NULL,
cargo varchar (50) not null




);



CREATE Table clientes3(
    Id_cliente int PRIMARY KEY auto_increment,
    cpf VARCHAR(14) not NULL UNIQUE,
    
)
