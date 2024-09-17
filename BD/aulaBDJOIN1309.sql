CREATE DATABASE aula1309 ; 

USE aula1309 ; 

CREATE TABLE cadastro (
id INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(50), 
dtHora DATETIME DEFAULT current_timestamp); 

INSERT INTO cadastro (nome) VALUES 
('Vivian');

SELECT * FROM cadastro ;

-- NOSSO PRIMEIRO JOIN 
CREATE DATABASE sprint2join ; 

USE sprint2join ; 

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY auto_increment, 
nome VARCHAR(45), 
responsavel VARCHAR(45)
) auto_increment = 100 ; 

INSERT INTO empresa(nome) VALUES
('Minsait'), 
('Deloitte'), 
('Stefanini') ; 

SELECT * FROM empresa ; 

CREATE TABLE aluno (
ra CHAR(8) PRIMARY KEY, 
nome VARCHAR(45), 
telefone CHAR(15), 
fkEmpresa INT, -- idEmpresa 
CONSTRAINT fkAlunoEmpresa FOREIGN KEY (fkEmpresa) 
	REFERENCES empresa(idEmpresa) 
); 

INSERT INTO aluno(ra, nome, fkEmpresa) VALUES
('01234567', 'Aladdin', 100), 
('12345678', 'Jasmine', 101), 
('87654321', 'Genio', 102) ; 

SELECT * FROM aluno ; 

-- EXIBIR OS ALUNOS E AS RESPECTIVAS EMPRESAS
-- LÁ VEM O JOIN
-- TODO JOIN TEM ON
SELECT * FROM aluno JOIN empresa 
	ON idEmpresa = fkEmpresa ; 
    
SELECT ra, idEmpresa FROM aluno JOIN empresa
	ON idEmpresa = fkEmpresa ; 
    
    SELECT empresa.nome AS 'Nome da Empresa'
    FROM aluno JOIN empresa
		ON idEmpresa = fkEmpresa ;
        
SELECT a.nome AS 'Nome do Aluno', 
	   e.nome AS 'Nome da Empresa' 
       FROM aluno AS a JOIN empresa AS e
	   ON idEmpresa = fkEmpresa;  
       
