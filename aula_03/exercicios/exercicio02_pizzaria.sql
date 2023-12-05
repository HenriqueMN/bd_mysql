-- Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal.
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(30) NOT NULL,
    descricao VARCHAR(50),
    PRIMARY KEY(id)
);

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(30) NOT NULL,
    preco DECIMAL(4,2),
    tipo BIGINT, 
    massa VARCHAR(30),
    PRIMARY KEY(id),
    FOREIGN KEY (tipo) REFERENCES tb_categorias(id)
);

-- Insira 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("salgada", "pizza salgada normal"),
("doce", "pizza doce"),
("vegetarina", "pizza feita apenas com ingredientes vegetarianos"),
("vegano", "pizza feita apenas com ingrediantes veganos"),
("especial", "pizza especial");

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(sabor, preco, tipo, massa)
VALUES("calabresa", 47.00, 1, "fina"),
("mussarela", 40.00, 1, "regular"),
("portuguesa", 45.00, 1, "fina"),
("brigadeiro", 44.00, 2, "fina"),
("brócolis", 43.00, 3, "regular"),
("palmito", 50.00, 4, "regular"),
("à moda da casa", 56.00, 5, "fina"),
("banana com chocolate", 48.00, 2, "fina");

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT sabor, preco, tb_categorias.tipo AS tipo, massa, tb_categorias.descricao AS descricao
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.tipo = tb_categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT sabor, preco, tb_categorias.tipo AS tipo, massa, tb_categorias.descricao AS descricao
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.tipo = tb_categorias.id
WHERE tb_categorias.tipo = "doce";