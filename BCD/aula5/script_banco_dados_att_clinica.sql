-- comandos para criar um BD
create database	Clinica_medica_Keynan2;
create database if not exists Clinica_medica_Keynan2;

use Clinica_medica_Keynan2;

create table if not exists Pacientes1(
Id_paciente int primary key auto_increment,
Nome_paciente varchar (60) not null,
Cpf varchar (14) not null unique,
Nascimento date not null,
Email varchar(100) ,
telefone varchar (15),
Convenio enum("Sim","Nao")

);
create table if not exists funcionario(
Id_funcionario int primary key,
Nome_Funcionario varchar(60) not null,
CPF varchar (14) not null unique,
telefone varchar (15),
Salario decimal (5,2) not null default 0.00
);

-- ALterar informações da tabela
-- Alter table
-- Adicionar um campo (atributo) ou coluna

alter table funcionario add email varchar(100) not null;

-- Como modificar uma tabela

alter table funcionario modify email varchar(50);



-- Renomear a tebela
rename table funcionario to funcionarios;


-- Apagar dados da tabela 

truncate table funcionarios;

-- apagar bd

drop database funcionarios;


-- mostrar tabelas 

show tables;
