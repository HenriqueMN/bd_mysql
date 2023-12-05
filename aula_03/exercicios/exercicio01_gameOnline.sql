CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    classe VARCHAR(30),
    especialidade VARCHAR(30),
    PRIMARY KEY(id)
);

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30),
    classe BIGINT NOT NULL,
    ataque BIGINT,
    defesa BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (classe) REFERENCES tb_classes(id)
);

-- Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes (classe, especialidade)
VALUES ("sacerdote", "suporte"),
("atirador", "dps"),
("tanker", "defesa"),
("ladino", "assassinato"),
("mago", "burst dps");

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens (nome, classe, ataque, defesa)
VALUES ("sacerdote1", 1, 1000, 3000),
("sacerdote10", 1, 2000, 6000),
("atirador1", 2, 2000, 1000),
("atirador10", 2, 4000, 2000),
("tanker1", 3, 2000, 4000),
("tanker10", 3, 4000, 8000),
("ladino10", 4, 4500, 2000),
("mago10", 5, 5500, 1000);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.

SELECT * FROM tb_personagens WHERE nome LIKE "%C%"; -- Não é case sensitive

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT nome, tb_classes.classe AS classe, ataque, defesa
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe = tb_classes.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT nome, tb_classes.classe AS classe, ataque, defesa
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe = tb_classes.id
WHERE tb_classes.classe = "atirador";


