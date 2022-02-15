CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
generico BOOLEAN NOT NULL,
promocao BOOLEAN NOT NULL,
PRIMARY KEY (id)
);


INSERT INTO tb_categoria (descricao,generico,promocao) VALUES ("Analgésico",TRUE,TRUE);
INSERT INTO tb_categoria (descricao,generico,promocao) VALUES ("Antibiótico",TRUE,TRUE);
INSERT INTO tb_categoria (descricao,generico,promocao) VALUES ("Higiene",FALSE,TRUE);
INSERT INTO tb_categoria (descricao,generico,promocao) VALUES ("Fralda",FALSE,TRUE);
INSERT INTO tb_categoria (descricao,generico,promocao) VALUES ("Antidepressivo",TRUE,TRUE);

SELECT * FROM tb_categoria;


CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
valor DECIMAL(6,2) NOT NULL,
quantidade INT,
prescricao BOOLEAN NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Dipirona",8.99,500,FALSE,1);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Fralda Pampers",69.90,300,FALSE,4);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES (" Benzitrat",29.90,50,TRUE,1);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Amoxicilina",8.90,600,FALSE,2);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Benepaxparox",32.50,100,TRUE,5);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Escova de dentes",4.99,1700,FALSE,3);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Shampoo",15.50,654,15.50,FALSE,3);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Ciprofloxacino",23.50,150,TRUE,1);
INSERT INTO tb_produtos (nome,valor,quantidade,prescricao,categoria_id) 
VALUES ("Fralda Huggies",59.90,320,FALSE,4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%b%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id
WHERE tb_categoria.id = 1