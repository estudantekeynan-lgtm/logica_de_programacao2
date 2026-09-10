CREATE DATABASE if NOT EXISTS sesi_extensaovsTA;
use sesi_extensaovsTA;


SHOW TABLEs;

-- visualizar todos os bd
show SCHEMAS;

CREATE Table if  NOT exists alunos(
    id_aluno    INT AUTO_INCREMENT  PRIMARY KEY,
    nome_aluno VARCHAR(50) not null,
    cpf_aluno CHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- visualizar informações sobre os dados da tabela 

DESCRIBE alunos;

