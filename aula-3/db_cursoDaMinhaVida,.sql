CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
formato VARCHAR(255) NOT NULL,
duracao VARCHAR (255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categoria(descricao,formato,duracao) VALUES ("Tecnologia","EAD","6 Meses");
INSERT INTO tb_categoria(descricao,formato,duracao) VALUES ("Gestão","Presencial","12 Meses");
INSERT INTO tb_categoria(descricao,formato,duracao) VALUES ("Relações","EAD","8 Meses");
INSERT INTO tb_categoria(descricao,formato,duracao) VALUES ("Saúde","EAD","9 Meses");
INSERT INTO tb_categoria(descricao,formato,duracao) VALUES ("Comunicação","Presencial","13 Meses");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
curso VARCHAR(255) NOT NULL,
mensalidade DECIMAL (6,2) NOT NULL,
turma VARCHAR(255) NOT NULL,
professor VARCHAR (255) NOT NULL,
requisito VARCHAR (255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("Java iniciante",100.00,"2a","Joaquim","Conhecimentos básicos de informática",1);
INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("Cultura e Desenvolvimento",60.00,"5d","Lorena","Conhecimentos básicos de informática",5);
INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("Relações públicas",20.00,"3f","Isaac","Nenhum",3);
INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("Enfermagem",50.00,"4e","Enzo","Nenhum",4);
INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("JavaScript",110.00,"2b","Cristina","Conhecimentos básicos de informática",1);
INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("Gestão da Produção Industrial",40.00,"6g","Marisa","Nenhum",2);
INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("Arte e Cultura Popular",60.00,"5d","Lorena","Conhecimentos básicos de informática",5);
INSERT INTO tb_produto(curso,mensalidade,turma,professor,requisito,categoria_id) 
VALUES ("Gestão Financeira",70.00,"3a","Nath Arcuri","Nenhum",2);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE mensalidade > 50;

SELECT * FROM tb_produto WHERE mensalidade BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE curso LIKE "%j%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id = tb_produto.categoria_id
WHERE tb_categoria.id = 1;