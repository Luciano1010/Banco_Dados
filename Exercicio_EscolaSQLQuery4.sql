CREATE DATABASE db_Escola;

USE db_Escola;

CREATE TABLE tb_Escola(
id BIGINT IDENTITY (1,1),
Nome VARCHAR(255) NOT NULL,
Idade INT NOT NULL,
Serie INT NOT NULL,
NomedosPais	VARCHAR (255) NOT NULL,
Notas DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_Escola
(Nome,Idade,Serie,NomedosPais,Notas)
VALUES
('João ',10, 8,'Maria R',6.0),
('Pedro',11, 8,'Joao P',8.5),
('Luciano',10, 8,'Ronado S',9.9),
('Lucas',12,  8,'Mateus V',5.0),
('Paulo',11, 8,'Patricia S',6.6),
('Michael',10, 8,'Manoel', 7.5),
('Ryan',11, 8,'Paulo S', 8.5),
('Breno',10, 8,'Luciano A' ,7.8);


ALTER TABLE Tb_escola ALTER COLUMN Notas Decimal(6,2);

SELECT * FROM tb_Escola;
SELECT * FROM tb_Escola WHERE Notas > 7;
SELECT * FROM tb_Escola WHERE Notas < 7;

UPDATE tb_Escola   SET Notas = 7.0 WHERE id = 4;


