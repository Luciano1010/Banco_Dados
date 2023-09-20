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

-- MODO DE BUSCA POR INICIAIS DA PALAVRA % É UM CORINGA PRA TRAZER O RESTO DA PALAVRA--
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

-- Insere dados na tabela tb_categoriasINSERT INTO tb_categorias (categoria)VALUES ('Frutas');INSERT INTO tb_categorias (categoria)VALUES ('Verduras');INSERT INTO tb_categorias (categoria)VALUES ('Legumes');INSERT INTO tb_categorias (categoria)VALUES ('Temperos');INSERT INTO tb_categorias (categoria)VALUES ('Ovos');INSERT INTO tb_categorias (categoria)VALUES ('outros');

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
 ('Maçã', 1000, '2022-03-07', 1.99, 1),('Banana', 1300, '2022-03-08', 5.00, 1), ('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2), ('Cebola', 1020, '2022-03-08', 5.00, 3), ('Ovo Branco', 1000, '2022-03-07', 15.00, 5), ('Agrião', 1500, '2022-03-06', 3.00, 2), ('Cenoura', 1800, '2022-03-09', 3.50, 3), ('Pimenta', 1100, '2022-03-15', 10.00, 4), ('Alecrim', 130, '2022-03-10', 5.00, 4), ('Manga', 200, '2022-03-07', 5.49, 1), ('Laranja', 3000, '2022-03-13', 10.00, 1);

 SELECT * FROM tb_produtos INNER JOIN tb_categorias -- INNER JOIN ELA FALA OLHAR PRA TABELA E TRAZ OS PRODUTOS RELACIONADOS A CATEGORIA
 ON tb_categorias.Id = tb_produtos.categoria_id -- ON SAO AS COLUNAS QUE O JOIN VAI LER O ID CATEGORIA E ID DA TABELA DA PRODUTOS.
 
  SELECT * FROM tb_produtos  LEFT JOIN tb_categorias -- LEFT JOIN ELA FALA OLHAR PRA TABELA E TRAZ OS PRODUTOS RELACIONADOS A CATEGORIA
  ON tb_categorias.Id = tb_produtos.categoria_id
  

  INSERT INTO tb_produtos(nome,quantidade,preco)  VALUES ('panela', 1129,150.00);  SELECT tb_produtos.Id,nome,quantidade,dtvalidade,preco,categoria_id,categoria  from tb_categorias right join tb_produtos on tb_categorias.id = tb_produtos.categoria_id