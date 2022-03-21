-- Cria Banco de dados db_generation_gaame_online
CREATE DATABASE db_generation_gaame_online;

-- Seleciona o Banco de Dados db_generation_gamee_online
USE db_generation_gaame_online;

-- Cria a tabela tb_classe
CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Cria a tabela tb_personagem
CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
ataque double NOT NULL,
defesa double NOT NULL,
arma varchar(255) NOT NULL,
nivel varchar(255) NOT NULL,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

-- Inserir dados na tabela
INSERT INTO tb_classe (classe)
VALUES ("Atirador");
INSERT INTO tb_classe (classe)
VALUES ("Soldados");
INSERT INTO tb_classe (classe)
VALUES ("Arqueiros");
SELECT * FROM tb_classe;

-- Inserir dados na tebela
INSERT INTO tb_personagem (nome, ataque, defesa, arma, nivel,classe_id)
VALUES ("Marcelo", 4000, 2000, "Arma", "Dificil", 1);

INSERT INTO tb_personagem (nome, ataque, defesa, arma, nivel,classe_id)
VALUES("Maria", 2500, 1500, "faca", "Dificil", 2);

INSERT INTO tb_personagem (nome, ataque, defesa, arma, nivel,classe_id)
VALUES("Alex",2800, 5000, "flexa", "Moderado", 3);

INSERT INTO tb_personagem (nome, ataque, defesa, arma, nivel,classe_id)
VALUES("Alice",2900, 1500,"Arma","Facil" ,1);

INSERT INTO tb_personagem (nome, ataque, defesa, arma, nivel,classe_id)
VALUES("Lucas",2700, 3000,"faca","Dificil", 2);


-- Listar todos os produtos
SELECT * FROM tb_personagem;

-- JUNTAR LISTAS
-- SELECT nome,ataque,defesa,arma,nivel,tb_classe.classe
SELECT * FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;

SELECT * FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.classe = "Atirador";

-- CONSULTA
SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa  >=1000 AND defesa <=2000;
-- SELECT * FROM tb_personagem WHERE defesa  BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";