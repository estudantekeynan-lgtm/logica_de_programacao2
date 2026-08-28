-- Comandos para criar um banco de dados-- 

create database Clinica_medica_Keynan;
create database Clinica_medica_Keynan2;

drop database clinica_medica_Keynan2; 


-- comando para ativiar o banco de dados--

use Clinica_medica_Keynan;

create table pacientes(
id_paciente int auto_increment primary key,
sexo_paciente VARCHAR(10) NOT NULL,
nome_paciente VARCHAR(60) not NULL,
CPF VARCHAR(14) not NULL UNIQUE,
email varchar (60) not NULL UNIQUE,
telefone VARCHAR (15) NOT NULL UNIQUE,
Status_pacientes char(10) default "Ativo"




);

create table Auxiliares(
id_funcionario int auto_increment primary key,
setor varchar(20) not null,
periodo varchar(20) not null,
nome varchar(40) not null,
cpf varchar (14) not null unique,
funcao varchar(30) not null

);
create table doutores(
id_doutor int auto_increment primary key,
especificacao varchar(40) not null,
setor varchar(30) not null,
nome varchar (40) not null,
cpf varchar(14) not null unique
);

create table medicamentos(
id_produto int auto_increment primary key,
prescricao varchar(14) default "precisa",
categoria varchar (20) not null,
marca varchar(30) not null,
estoque  bigint not null

);

create table agendamento (
id_consulta int auto_increment primary key,
hora datetime not null,
nome varchar (40) not null,
cpf varchar(14) not null unique,
especificacao varchar(30) not null,
telefone varchar (15) not null unique
);

