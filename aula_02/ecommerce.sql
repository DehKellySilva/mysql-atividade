CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
categoria VARCHAR(255) NOT NULL,
marca VARCHAR(255) NOT NULL,
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco) 
VALUES ("Quebra-cabeça 1000 peças",500,"Lazer e diversão","Grow",46.95);
INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco) 
VALUES ("Kindle",1000,"Dispositivo eletrônico","Amazon",299.99);
INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco) 
VALUES ("Geladeira ",359,"Eletrodoméstico","Electrolux",1999.67);
INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco) 
VALUES ("Notebook",30,"Dispositivo eletrônico","Samsung",5999.99);
INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco) 
VALUES ("Espátulas",419,"Utilidade doméstica","Tupperware",25.99);
INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco) 
VALUES ("It, a coisa - Stephen King",700,"Livros","Suma de Letra",65.90);
INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco) 
VALUES ("Panela",679,"Utilidade doméstica","Tramontina",76.18);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,quantidade,categoria,marca,preco)
VALUES ("Papel Higiênico",1000,"Higiene pessoal","Neve",12,99);

ALTER TABLE tb_produtos MODIFY preco DECIMAL(8,2);

UPDATE tb_produtos SET preco = 76.18 WHERE id = 7;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;
