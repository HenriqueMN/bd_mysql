CREATE DATABASE db_escola; 

USE db_escola; 

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    nota decimal(4,2),
    primary key (id)
);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ("Ângelo Diniz", "2010-03-25", 1, 9.00),
("Diego Soares", "2009-05-13", 2, 5.00),
("Samanta Ribeiro", "2011-08-12", 3, 7.00),
("Alberto Santos", "2010-12-10", 1, 3.00),
("Samira Robins", "2010-04-09", 1, 10.00),
("Armênio Prado", "2011-07-21", 3, 5.00),
("Luz Deodato", "2009-11-30", 2, 7.50),
("Pauline Silva", "2011-02-04", 3, 4.50);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes SET nota = 8.00 WHERE id = 7;