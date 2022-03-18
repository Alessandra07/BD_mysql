-- Criar Banco de dados
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de dados
USE db_quitanda;

-- Criar Tabela  tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

 -- Iserir dados na tabela
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("arroz", 50, "2023-04-29", 20.00);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("xuxu", 20, "2022-04-18", 3.00);
 
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("tomate", 80, "2022-03-19", 16.00);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("cenoura", 30, "2022-05-29", 13.00);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("morango", 1, "2022-03-20", 8.50);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("banana", 500, "2022-03-20", 10.00);
 -- Listar todos os produtos
 SELECT * FROM tb_produtos;

-- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 8.50 WHERE id = 4;

UPDATE tb_produtos SET preco = 20.00 WHERE id = 5;
/* Alterações na  Estrutura da tabela*/

DELETE FROM tb_produtos WHERE id = 1;
DELETE FROM tb_produtos WHERE id = 2;
DELETE FROM tb_produtos WHERE id = 3;
ALTER TABLE tb_produtos MODIFY preco decimal(8,2); 

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_produtos;




