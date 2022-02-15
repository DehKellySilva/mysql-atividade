-- Criar o Banco de dados db_quitanda;
CREATE DATABASE db_quitanda;

USE db-quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
preco DECIMAL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, preco) 
VALUES ("Maçã", 10, 1.99);
INSERT INTO tb_produtos (nome, quantidade, preco) 
VALUES ("Banana", 13, 4.99);
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES ("Manga", 20, 5.49);
INSERT INTO tb_produtos (nome, quantidade, preco) 
VALUES ("Melancia", 3, 10.00);
INSERT INTO tb_produtos (nome, quantidade, preco) 
VALUES ("Cebola", 100, 1.50);

UPDATE tb_produtos SET preco = 1.99 WHERE id = 1;

UPDATE tb_produtos SET preco = 1.99 WHERE nome = "Maçã";

SELECT * FROM tb_produtos;

DELETE FROM tb_produtos WHERE id = 6;

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES ("Batata", 150, 5.50);

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produtos SET descrecao = "Banana Ouro";

ALTER TABLE tb_produtos MODIFY preco DECIMAL(8,2); -- 000000.00

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

ALTER TABLE tb_produtos DROP descricao;
