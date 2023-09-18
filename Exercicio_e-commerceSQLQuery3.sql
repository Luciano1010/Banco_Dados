CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce
(id BIGINT IDENTITY (1,1),
 Produto VARCHAR(255) NOT NULL,
 Nome VARCHAR(255) NOT NULL,
 Descricao VARCHAR(255) NOT NULL,
 Quantidade INT NOT NULL,
 Preco DECIMAL NOT NULL,
 PRIMARY KEY (id)
);

INSERT INTO tb_ecommerce
(Produto,Nome,Descricao,Quantidade,preco)
VALUES
('Tenis','NIKESHOX','TENIS DE COURO E COM 4 MOLAS',29,899),
('Tenis','Mizuno','Tenis de corrida leve e confortavel',40,350),
('Bermuda','NikeAir','Bermuda pra jogadores de Basquete',65,80),
('Bola', 'Umbro','Bola de Futebol de Salão',100,250),
('Camisa','Times','Times de Varias Seleções e Clubes',300,200),
('Chuteira de Campo','Nike','Chuteira de Campo', 180, 1000),
('Chuteira de Futsal','Nike','Chuteira de Futsal total 90', 40, 120),
('Casaco de Clubes','Real Madri','Casaco de treino do Rea Madri com Gola personalizada', 110,400);

SELECT * FROM tb_ecommerce;
SELECT * FROM tb_ecommerce WHERE PRECO > 500;
SELECT * FROM tb_ecommerce WHERE PRECO < 500;

UPDATE tb_ecommerce    SET Quantidade = 140 WHERE id = 3;



