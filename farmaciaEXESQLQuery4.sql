CREATE DATABASE db_Farmacia_bem_estar;

USE db_Farmacia_bem_estar;

CREATE TABLE tb_categoria1(
	id BIGINT IDENTITY(1,1),
	nome VARCHAR (255) NOT NULL,
	Ativa bit,
	PRIMARY KEY (id)
);

INSERT INTO tb_categoria1
(nome,Ativa)
VALUES
('MEDICAMENTOS',1),
('MEDICAMENTOS CONTROLADOS',3),
('PERFUMARIA',5),
('Higiene Pessoal',5),
('Maternidade',6);
	

CREATE TABLE tb_produto1(
    
	id BiGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Descrição VARCHAR(255) NOT NULL,
	Quantidade INT,
	Preço DECIMAL (6,2),
	categoria1_id BIGINT,
	PRIMARY KEY (id),
	Foreign key(categoria1_id) references tb_produto1(id)
	);
	
	SELECt * FROM tb_categoria,tb_produto
	
	INSERT INTO tb_produto1
	(Nome,Descrição,Quantidade,Preço,categoria1_id)
	VALUES
	('DIPIRONA','DOR DE CABEÇA E FEBRE',200, 15.65,1 ), -- 1 DOR E FEBRE
	('CINEGRIPE','GRIPES FORTE',100,8.50,1),
	('AS','PRESSÃO',500,2.00,2), --2 PRESS
	('QUETIAPINA','DEPRESSAO', 100,100.00,3),--3 CONTROLADOS
	('DESODORANTE','AEOROSOL',50,20.10,5), -- 4 PERFUMARIA
	('BARBEADOR','MACH3',150,45.20,5), -- 5 HIGIENE PESSOAL
	('FRALDAS','COMBO JUMBO', 400,75.65,6), -- 6 MATERNIDADE
	('VENLAFAXINA','REMEDIO PRA EPILEPSIA', 100, 65.40, 3); -- 3 CONTROLADOS
	 
	
	SELECT * FROM tb_produto1 INNER JOIN tb_categoria1
    ON tb_produto1.categoria1_id = tb_categoria1.id where tb_produto1.Preço > 50

	SELECT * FROM tb_produto1 INNER JOIN tb_categoria1 
    ON tb_produto1.categoria1_id = tb_categoria1.id where tb_produto1.Preço BETWEEN 5 AND 60

	SELECT * FROM tb_produto1 WHERE Descrição LIKE '%M%';

	SELECT * FROM tb_categoria1 INNER JOIN tb_produto1 
    ON tb_produto1.categoria1_id = tb_categoria1.id

	SELECT * FROM tb_categoria1 INNER JOIN tb_produto1
    ON tb_produto1.categoria1_id = tb_categoria1.id  where tb_produto1.Nome = 'CINEGRIPE'

   

