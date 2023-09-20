USE db_quitanda;

SELECT * FROM tb_produtos;
                         -- ORDER BY E A COLUNA QUE QUERO ORDENAR --
SELECT * FROM tb_produtos ORDER BY Preco ASC; -- ORDENAR POR ORDEM CRESCENTE --
SELECT * FROM tb_produtos ORDER BY Preco DESC; -- ORDENAR POR ORDEM DECRESCENTE --
                 
-- TRAZER TODOS OS PRODUTOS - O EXEMPLO ABAIXO --
SELECT * FROM tb_produtos WHERE NOT id = 1;

-- TRAZER DADO EM INTERVALOS DEFINIDOS -- 
SELECT * FROM tb_produtos WHERE Preco IN(4,10,8);
SELECT * FROM tb_produtos WHERE Preco IN(4,10,8) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 4 AND 12;

-- MODO DE BUSCA POR INICIAIS DA PALAVRA % � UM CORINGA PRA TRAZER O RESTO DA PALAVRA--
SELECT * FROM tb_produtos WHERE Nome LIKE 'M%'; -- PALAVRAS QUE INICIAM COM TAL LETRA.

SELECT * FROM tb_produtos WHERE Nome LIKE '%E'; -- PALAVRAS QUE FINALIZAM COM TAL LETRA.

SELECT *FROM tb_produtos WHERE Nome LIKE '%A%'; -- PALAVRAS QUE CONTENHAM NO MEIO.

SELECT * FROM tb_produtos; -- TRAZ TODA A TABELA

SELECT COUNT (*) AS 'NUMEROS DE LINHAS' FROM tb_produtos; -- CONTANDO O NUMEROS DE LINHAS DA TABELA

SELECT SUM(Preco) AS 'Valor total dos produtos' FROM tb_produtos; -- contar os valores das colunas

SELECT AVG(PRECO) AS 'MEDIA DOS VALORES' FROM tb_produtos; -- MEDIA DOS VALORES DA COLUNA PRECO

SELECT MAX(PRECO) AS 'MAIOR VALOR DA TABELA' FROM tb_produtos; -- TRAZER O MAIOR VALOR DA TABELA

SELECT MIN(PRECO) AS 'MENOR VALOR DA TABELA' FROM tb_produtos; -- TRAZ O MENOR VALOR DA TABELA


-- relacionamento entre tabelas

CREATE TABLE tb_categorias(
   Id BIGINT IDENTITY (1,1), 
   categoria VARCHAR(255) NOT NULL,
   PRIMARY KEY (Id)

);

-- Insere dados na tabela tb_categorias

DROP TABLE tb_produtos;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY (1,1),
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
	datadeValidade DATE,
	preco DECIMAL(6,2),
	PRIMARY KEY(Id),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES  tb_categorias(Id)
);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome,quantidade,datadeValidade,preco,categoria_id)
VALUES
 ('Ma��', 1000, '2022-03-07', 1.99, 1),

 SELECT * FROM tb_produtos INNER JOIN tb_categorias -- INNER JOIN ELA FALA OLHAR PRA TABELA E TRAZ OS PRODUTOS RELACIONADOS A CATEGORIA
 ON tb_categorias.Id = tb_produtos.categoria_id -- ON SAO AS COLUNAS QUE O JOIN VAI LER O ID CATEGORIA E ID DA TABELA DA PRODUTOS.
 
  SELECT * FROM tb_produtos  LEFT JOIN tb_categorias -- LEFT JOIN ELA FALA OLHAR PRA TABELA E TRAZ OS PRODUTOS RELACIONADOS A CATEGORIA
  ON tb_categorias.Id = tb_produtos.categoria_id
  

  INSERT INTO tb_produtos(nome,quantidade,preco)