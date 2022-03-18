CREATE DATABASE db_RH;

-- Selecionar o banco de dados 
USE db_RH;
-- Criar tabela tb_funcionarios
CREATE TABLE tb_funcionarios(
usuario bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int NOT NULL,
cpf varchar(255) NOT NULL,
endereco varchar(255) NOT NULL,
salario double NOT NULL,
cargo varchar(255) NOT NULL,

PRIMARY KEY (usuario)
);

-- Inserir dados na tabela

INSERT INTO tb_funcionarios ( nome, idade, cpf , endereco , salario , cargo )
VALUES ( "Esmeralda", 28 , "2234456743-2" , "rua maria cristina" , 4000.00 , "Dev junior");

INSERT INTO tb_funcionarios ( nome, idade, cpf , endereco , salario , cargo )
VALUES ( "Ana", 28 , "2434456746-5" , "rua maria madalena" , 4000.00 , "Dev junior");

INSERT INTO tb_funcionarios ( nome, idade, cpf , endereco , salario , cargo )
VALUES ( "Jhonatan", 28 , "2234456743-5" , "rua candida borges" , 10000.00 , "Dev pleno");

INSERT INTO tb_funcionarios ( nome, idade, cpf , endereco , salario , cargo )
VALUES ( "Thiago", 28 , "2234786743-8" , "rua alencar joao" , 20000.00 , "Dev senior");

INSERT INTO tb_funcionarios ( nome, idade, cpf , endereco , salario , cargo )
VALUES ( "Alessandra", 28 , "2234456893-9" , "rua da vitoria " , 300000.00 , "Dona");

-- litar todos os funcionarios

SELECT * FROM tb_funcionarios;

-- mostrar itens especificos 
SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

-- Atualizar os dados da tabela
UPDATE tb_funcionarios SET salario = 6000 WHERE usuario = 1;


