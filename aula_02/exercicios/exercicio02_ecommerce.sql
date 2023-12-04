CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(200),
    autor varchar(200),
    genero varchar(30),
    preco decimal(7,2),
    primary key (id)
);

INSERT INTO tb_produtos (nome, autor, genero, preco) 
VALUES ("Battle Royale", "Koushun Takami", "Ficção Científica Distópica",  80.00),
("O incolor Tsukuru Tazaki e seus anos de peregrinação", "Haruki Murakami", "Realismo literário",  55.70),
("Norwegian Wood", "Haruki Murakami", "Realismo literário",  79.90),
("Vilão", "V.E. Schwab", "Fantasia",  59.90),
("E não sobrou nenhum", "Agatha Christie", "Romance Policial",  59.90),
("Eu sei o que você está pensando", "John Verdon", "Romance Policial",  45.79),
("Esconda-se", "Lisa Gardner", "Romance Policial",  59.90),
("Orgulho e preconceito", "Jane Austen", "Romance",  79.90);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 100.00 WHERE id = 2;