CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id bigint auto_increment,
    nome varchar(200) NOT NULL,
    idade int,
    cargo varchar(100),
    salario decimal(8,2),
    primary key (id)
);

INSERT INTO tb_funcionarios (nome, idade, cargo, salario) 
VALUES ("João de Carvalho", 45, "Gerente", 5000.00),
("Maria Aparecida", 25, "Estagiário", 1800.00),
("Marta da Silva", 34, "Desenvolvedor", 3200.00),
("Jorge Matos", 21, "Estagiário", 1800.00),
("Sidney Santos", 25, "Desenvolvedor", 3000.00);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario <  2000.00;

UPDATE tb_funcionarios SET nome = "Jorge Matos Magalhães" WHERE id = 4