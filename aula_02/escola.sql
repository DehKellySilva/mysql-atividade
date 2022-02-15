CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade VARCHAR(255) NOT NULL,
serie VARCHAR(255) NOT NULL,
turno VARCHAR(255) NOT NULL,
nota INT,
PRIMARY KEY (id)
);

INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Elizabeth",7,"Segundo ano - Fundamental","Manhã",6);
INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("João",16,"Terceiro ano - Médio","Noite",3);
INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Amaya",10,"Quinto ano - Fundamental","Tarde",10);
INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Jorge",3,"Terceiro ano - Infantil","Manhã",6);
INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Bevely",17,"Terceiro ano - Médio","Manhã",2);
INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Kimberly",8,"Segundo ano - Fundamental","Manhã",7);
INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Enzo",8,"Segundo ano - Fundamental","Manhã",8);
INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Miguel",8,"Segundo ano - Fundamental","Manhã",5);

SELECT * FROM tb_aluno;

SELECT * FROM tb_aluno WHERE nota > 7;

SELECT * FROM tb_aluno WHERE nota < 7;

DELETE FROM tb_aluno WHERE turma;

INSERT INTO tb_aluno(nome,idade,serie,turno,nota) VALUES ("Gustavo",7,"Segundo ano - Fundamental","Manhã",3);
