-- comandos para criar um BD
create database	Clinica_medica_Keynan2;
create database if not exists Clinica_medica_Keynan2;

use Clinica_medica_Keynan2;
create database banco_Dados;

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

alter table funcionario drop column email;


-- mostrar tabelas 

show tables;

-- inserir dados na tabela 
insert into funcionario (Id_funcionario,Nome_Funcionario,CPF,telefone,salario)
value(2,'Livia','122.345.666-79','(19)99111-7777',599);


select * from funcionario;


insert into pacientes1(id_paciente,Nome_paciente,Cpf,Nascimento,Email,telefone,Convenio)
values(default,'Keynan','123.456.789-10','2009-11-24','estudantekeynan@gmail.com','(19)99105-7179','Sim');

select * from pacientes1;

insert into pacientes1(id_paciente,Nome_paciente,Cpf,Nascimento,Email,telefone,Convenio)
values(default,'Keyna','222.456.789-10','2000-11-24','sla@gmail.com','(11)99555-7278',default);

truncate table funcionario
