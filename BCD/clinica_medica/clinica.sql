create DATABASE clinica_medica;


CREATE Table Pacientes (
    id_paciente INT auto_increment PRIMARY KEY
    sexo_paciente VARCHAR(10) NOT NULL
    nome_paciente VARCHAR(60) not NULL
    CPF VARCHAR(14) not NULL UNIQUE
    email varchar (60) not NULL UNIQUE
    telefone VARCHAR (15) NOT NULL UNIQUE
    
)
