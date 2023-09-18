CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT IDENTITY(1,1), 
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY(id)
);

	

INSERT INTO tb_produtos 
(Nome,Quantidade,DataValidade,Preco)
VALUES
('BANANA',20,'2023-09-18',8.10);

INSERT INTO tb_produtos
(Nome,Quantidade,DataValidade,Preco)
VALUES
('MAÇA',15,'2023-09-29',4.45);

INSERT INTO tb_produtos
(Nome,Quantidade,DataValidade,Preco)
VALUES
('COUVE',45,'2023-09-29',7.45),
('LARANJA',33,'2023-09-29',10.45);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2;

SELECT * FROM tb_produtos WHERE Nome= 'Banana';

SELECT Nome,Quantidade,Preco FROM tb_produtos WHERE Nome= 'Banana';

SELECT * FROM tb_produtos WHERE id = 1 OR id = 2 OR id = 3; -- metodo de buscar de mais de um id --

SELECT * FROM tb_produtos WHERE preco > 4 AND Preco < 10 ; -- metodo de selecionar por meio de operadores logicos --

ALTER TABLE tb_produtos ALTER COLUMN preco Decimal(6,2); -- metodo de alterar alguma coluna --

INSERT INTO tb_produtos -- metodo de inserir produtos no banco de dados --
(Nome,Quantidade,DataValidade,Preco)
VALUES
('Milho',40,'2023-09-29',15.45);

ALTER TABLE tb_produtos ADD Descricao VARCHAR(255); -- metodo de adicionar uma coluna --

UPDATE tb_produtos SET Descricao = 'Milho Verde natural' WHERE id = 6;

DELETE FROM tb_produtos WHERE Id = 2; -- meotodo pra excluir uma linha q esta duplicado --