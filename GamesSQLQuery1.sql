CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Classificaçao int NOT NULL,
	
	PRIMARY KEY (id)
);
CREATE TABLE tb_personagens(
    id BiGINT IDENTITY (1,1),
	NivelPoder INT,
	Descricao VARCHAR(255) NOT NULL,
	Curiosidades  VARCHAR (255) NOT NULL,
	Armas VARCHAR (255) NOT NULL,
	classes_id BIGINT ,
	PRIMARY KEY (id),
	
	Foreign key(classes_id) references tb_personagens(id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_classes(Nome,Classificaçao)
VALUES
('LARA',24), -- 1
('JAISON',56), -- 2
('MATADOR',67), -- 3
('MORRECEDO',15), -- 4
('ALMA NEGRA',77); -- 5

SELECT * FROM tb_classes;

INSERT INTO tb_personagens
(NivelPoder,Descricao,Curiosidades,Armas,classes_id)
VALUES
(2500,'GUERREIRO','CORAJOSO','FUZIL',1), -- 1 FORTE
(1500,'ASPIRANTE','+- CORAJOSO','PISTOLA',2), -- 2 MEDIO
(500,'SEM PATENTE','QUER A MAE KK','ESTILINGUE',3); -- 3 FRACO

SELECT * FROM tb_classes INNER JOIN tb_personagens 
ON tb_personagens.classes_id = tb_classes.id where tb_personagens.NivelPoder > 2000

SELECT * FROM tb_classes INNER JOIN tb_personagens 
ON tb_personagens.classes_id = tb_classes.id where tb_personagens.NivelPoder BETWEEN 1000 AND 2000

SELECT * FROM tb_classes WHERE Nome LIKE '%N%';

SELECT * FROM tb_classes INNER JOIN tb_personagens 
ON tb_personagens.classes_id = tb_classes.id 

SELECT * FROM tb_classes INNER JOIN tb_personagens 
ON tb_personagens.classes_id = tb_classes.id  where tb_personagens.descricao = 'Guerreiro'



SELECT * FROM tb_personagens;



