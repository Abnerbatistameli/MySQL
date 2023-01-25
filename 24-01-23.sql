CREATE DATABASE tb_categorias;

use tb_categorias;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
		tamanho varchar(255) not null,
        classificacao varchar(255) not null,
    PRIMARY KEY (id)    
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
		valor int,
        nome varchar(255) not null,
        modalidade varchar(255) not null,
        massa varchar(255) not null,
    PRIMARY KEY (id)    
);

SELECT * FROM tb_pizzas;

ALTER TABLE tb_pizzas ADD avaliacao_id BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT 
FOREIGN KEY (avaliacao_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(tamanho,classificacao) values("Medium","Otima");
INSERT INTO tb_categorias(tamanho,classificacao) values("Grande","boa");
INSERT INTO tb_categorias(tamanho,classificacao) values("Grande","excelente");
INSERT INTO tb_categorias(tamanho,classificacao) values("Pequena","pessima");
INSERT INTO tb_categorias(tamanho,classificacao) values("Medium","Otima");

INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(120,"Portuguesa","Salgada","Fina");
INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(140,"Moda","Salgada","Tradicional");
INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(40,"Calabresa","Salgada","Tradicional");
INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(30,"Banana","Doce","Grossa");
INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(38,"Brigadeiro","Doce","Fina");
INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(46,"Sorvete","Doce","Grossa");
INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(49,"Camarao","Salgada","Fina");
INSERT INTO tb_pizzas(valor,nome,modalidade,massa) values(125,"Brocolis","Salgada","Fina");

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor > 49 AND valor < 101 ;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * from tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE modalidade LIKE "%Doce%";

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
		cla varchar(255) not null,
        planeta varchar(255) not null,
    PRIMARY KEY (id)    
);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
	id bigint auto_increment,
		nome varchar(255) not null,
        sobrenome varchar(255) not null,
        idade int,
        sexo varchar(255) not null,
    PRIMARY KEY (id)    
);

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD classes_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT 
FOREIGN KEY (classes_id) REFERENCES tb_classes(id);

ALTER TABLE tb_personagens ADD ataque BIGINT;
ALTER TABLE tb_personagens ADD defesa BIGINT;

INSERT INTO tb_classes(cla,planeta) values("Vencedores","Saturno");
INSERT INTO tb_classes(cla,planeta) values("BeijaFlor","Venus");
INSERT INTO tb_classes(cla,planeta) values("Barbaros","Terra");
INSERT INTO tb_classes(cla,planeta) values("Spartas","Sol");
INSERT INTO tb_classes(cla,planeta) values("Bravos","Pandora");

INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Ronaldo","Santos",18,"M",5,3000,4000);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Alex","Matos",19,"M",3,3500,4100);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Ronald","Mineiro",30,"M",1,900,1000);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Jose","Pascal",27,"M",1,6453,7564);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Tereza","Aparecida",19,"F",5,4567,2345);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Ana","Maria",24,"F",3,7890,9065);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Flavia","Souza",24,"F",3,7890,9065);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Pamela","Ribeiro",24,"F",3,7890,9065);
INSERT INTO tb_personagens(nome,sobrenome,idade,sexo,classes_id,ataque,defesa) values("Celia","Ribeiro",24,"F",3,7890,9065);


SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 999 AND defesa < 2001 ;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE cla LIKE "%Bravos%";





