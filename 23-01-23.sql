CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE colaboradores(
id bigint auto_increment,
	nome varchar(255) not null,
	sobrenome varchar(255) not null,
	dependentes int,
	tel int,
	salario decimal not null,
PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome,sobrenome,dependentes,tel,salario)
values ("Jose","Santos",1,01,3000);
INSERT INTO colaboradores(nome,sobrenome,dependentes,tel,salario)
values ("Seixas","Silva",2,02,1000);
INSERT INTO colaboradores(nome,sobrenome,dependentes,tel,salario)
values ("Pedro","Batista",1,03,4000);
INSERT INTO colaboradores(nome,sobrenome,dependentes,tel,salario)
values ("Abner","Lopes",2,04,6000);
INSERT INTO colaboradores(nome,sobrenome,dependentes,tel,salario)
values ("Ronaldinho","Gaucho",5,05,900);

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET nome = "Joaquim" WHERE id = 1;





