CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
ativo BOOLEAN NOT NULL,
entrega BOOLEAN NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (descricao,ativo,entrega) VALUES ("Queijo",TRUE,TRUE);
INSERT INTO tb_categoria (descricao,ativo,entrega) VALUES ("Embutidos",TRUE,TRUE);
INSERT INTO tb_categoria (descricao,ativo,entrega) VALUES ("Vegetais",TRUE,TRUE);
INSERT INTO tb_categoria (descricao,ativo,entrega) VALUES ("Aves",TRUE,TRUE);
INSERT INTO tb_categoria (descricao,ativo,entrega) VALUES ("Peixes",TRUE,TRUE);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
valor DECIMAL(6,2) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
borda VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Calabresa",35.00,"Grande","Recheada",2);
INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Caipira",36.00,"Broto","Seca",4);
INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Atum",35.00,"Broto","Recheada",5);
INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Napolitana",60.00,"Grande","Seca",1);
INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Brócolis",38.00,"Grande","Recheada",3);
INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Pepperone",60.00,"Broto","Seca",1);
INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Frango com catupiry",60.00,"Grande","Seca",4);
INSERT INTO tb_pizza (sabor,valor,tamanho,borda,categoria_id) VALUES ("Quatro queijos",45.00,"Broto","Recheada",1);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE valor > 45;

SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;

SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_categoria.id = 1;