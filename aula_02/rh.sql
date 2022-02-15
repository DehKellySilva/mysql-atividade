CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
setor VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome,idade,setor,cargo,salario) 
VALUES ("Nicole", 24, "Administrativo", "Admissão e demissão", 3500.00);
INSERT INTO tb_funcionarios(nome,idade,setor,cargo,salario) 
VALUES ("Amaya", 20,"Administrativo","Estágiaria no RH",1500.00);
INSERT INTO tb_funcionarios(nome,idade,setor,cargo,salario) 
VALUES ("Jakeline",31,"Operacional","Atendimento ao cliente",1800.00);
INSERT INTO tb_funcionarios(nome,idade,setor,cargo,salario) 
VALUES ("Carla",45,"Técnico","Desenvolvedora",6000.00);
INSERT INTO tb_funcionarios(nome,idade,setor,cargo,salario) 
VALUES ("Rafaela",56,"Operacional","Gerente",7000.00);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

ALTER TABLE tb_funcionarios MODIFY salario DECIMAL(6,2);

UPDATE tb_funcionarios SET salario = 1950.00 WHERE id = 3;

