CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
setor VARCHAR (255) NOT NULL,
ativo VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(descricao,setor,ativo) 
VALUES("Ferragens","Ferragens para Fixação e Montagem","Pronta-entrega");
INSERT INTO tb_categoria(descricao,setor,ativo) 
VALUES("Materiais Hidráulicos","Canos e Conexões Hidráulicas","Pronta-entrega");
INSERT INTO tb_categoria(descricao,setor,ativo) 
VALUES("Organização da Casa","Closets","Sob encomenda");
INSERT INTO tb_categoria(descricao,setor,ativo) 
VALUES("Banheiros","Cubas para Banheiro","Pronta-entrega");
INSERT INTO tb_categoria(descricao,setor,ativo) 
VALUES("Cozinhas e Áreas de Serviço","Cozinha planejada","Sob encomenda");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
quantidade INT,
valor DECIMAL(6,2) NOT NULL,
promocao DECIMAL(6,2) NOT NULL,
especificacao VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Prego",9000,1.00,1.00,"Unitário",1);
INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Cuba de apoio quadrada",500,244.90,195.90,"Unitário",4);
INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Módulo de closet",0,0,0,"Valor depende da especificações",3);
INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Caixa Sifonada",250,32.90,32.90,"Unitário",2);
INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Cano PVC Marrom Soldável",100,55.90,50.00,"6 metros",2);
INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Cozinha planejada",0,0,0,"Valor depende da especificações",5);
INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Parafuso de Aço para Madeira",8000,9.48,8.99,"Com 20 peças",1);
INSERT INTO tb_produto(nome,quantidade,valor,promocao,especificacao,categoria_id) 
VALUES("Cuba Semi Encaixe Quadrada",150,659.90,625.90,"Unitário",4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE promocao > 50;

SELECT * FROM tb_produto WHERE promocao BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id = tb_produto.categoria_id
WHERE tb_categoria.id = 1;