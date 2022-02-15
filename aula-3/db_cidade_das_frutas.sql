CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria( 
id BIGINT AUTO_INCREMENT, 
gosto VARCHAR(255) NOT NULL, 
cor VARCHAR(255) NOT NULL, 
descricao VARCHAR(255) NOT NULL, 
PRIMARY KEY (id) 
);

INSERT INTO tb_categoria (gosto,cor,descricao) 
VALUES ("Acido","Vermelho","Fruta"); 
INSERT INTO  tb_categoria (gosto,cor,descricao) 
VALUES ("Doce","Verde","Fruta"); 
INSERT INTO tb_categoria (gosto,cor,descricao) 
VALUES ("Doce","Verde","Legume"); 
INSERT INTO tb_categoria (gosto,cor,descricao) 
VALUES ("Doce","Verde","Folhagem"); 
INSERT INTO tb_categoria (gosto,cor,descricao) 
VALUES ("Doce","Amarelo","Fruta");

SELECT * FROM tb_categoria; 

CREATE TABLE tb_produto( 
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL, 
quantidade INT, 
preco DECIMAL(6,2) NOT NULL, 
formato VARCHAR(255) NOT NULL, 
validade DATE NULL, 
categoria_id BIGINT, 
PRIMARY KEY (id), 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Morango",500,60.00,"Bandeja","2022-02-21",1); 
INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Melância",100,50.00,"Unidade","2022-02-21",2); 
INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Abóbora",150,3.99,"Quilo","2022-02-17",3); 
INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Amora",220,7.99,"Bandeja","2022-02-18",1); 
INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Abacate",50,4.99,"Quilo","2022-02-17",2); 
INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Alface",400,1.50,"Unidade","2022-02-18",4); 
INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Banana",1500,1.75,"Quilo","2022-02-16",5); 
INSERT INTO tb_produto (nome,quantidade,preco,formato,validade,categoria_id) 
VALUES ("Coco verde",70,2.00,"Unidade","2022-02-21",2); 

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id = tb_produto.categoria_id
WHERE tb_categoria.id = 1;