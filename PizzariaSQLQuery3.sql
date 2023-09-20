CREATE DATABASE db_pizza_legal;

USE db_pizza_legal;


CREATE TABLE tb_categoriasPizza(
	id BIGINT IDENTITY (1,1),
	nome VARCHAR (255) NOT NULL,
	preco int,
	PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
    id BiGINT IDENTITY (1,1),
	Sabor VARCHAR (255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Adicionais VARCHAR (255) NOT NULL,
	Tamanho VARCHAR (255) NOT NULL,
	categoriasPizzas_id BIGINT ,
	PRIMARY KEY (id),

	Foreign key(categoriasPizzas_id) references tb_pizzas(id)
	);

INSERT INTO tb_categoriasPizza 
(nome,preco)
VALUES
('Calabresa',35), -- 1
('Mussarela',40), -- 2
('Toscana',50), -- 3
('Peperrone',100), -- 4
('AModadoChefe',55); -- 5
	
	
INSERT INTO tb_pizzas
(Sabor,Descricao,Adicionais,Tamanho,categoriasPizzas_id)
VALUES
('mussarela 4 Quejos','Provolone Queijo MInas Cheddar Queijo mofado','Borda Recheada','Grande',1), -- 1 FORTE
('Calabresa Fatiada','Calabresa fatiada com azeitonas','Borda com Cheddar','Medio',2), -- 2 MEDIO
('Bacon e Queijo','Pizza de bacon mais com base me Queijo','Borda Catupiry','Broto',3), -- 3 FRACO
('Peperrone','Peperron com Queijo','Borda Recheada','Grande',2), -- 1 FORTE
('A moda do Chefe','Frango desfiado com milho','Borda Catupiry','Medio',5), -- 2 MEDIO
('Toscana','Calabresa e Queijo','Bordar com queijo','Broto',2), -- 3 FRACO
('Frango','Frango e Queijo','Bordar com queijo','Broto',5),
('Mussarela Especial','Calabresa e Queijo','Bordar com queijo','Grande',1);

SELECT * FROM tb_pizzas INNER JOIN tb_categoriasPizza 
ON tb_pizzas.categoriasPizzas_id = tb_categoriasPizza.id where tb_categoriasPizza.preco > 45



SELECT * FROM tb_categoriasPizza INNER JOIN tb_pizzas 
ON tb_pizzas.categoriasPizzas_id = tb_categoriasPizza.id where tb_categoriasPizza.preco BETWEEN 50 AND 100

SELECT * FROM tb_categoriasPizza WHERE Nome LIKE '%P%';

SELECT * FROM tb_categoriasPizza INNER JOIN tb_pizzas
ON tb_pizzas.categoriasPizzas_id = tb_categoriasPizza.id  where tb_pizzas.Descricao = 'Calabresa e Queijo'


SELECT * FROM tb_categoriasPizza INNER JOIN tb_pizzas 
ON tb_pizzas.categoriasPizzas_id = tb_categoriasPizza.id



