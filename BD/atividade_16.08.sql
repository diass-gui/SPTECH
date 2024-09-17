-- EXERCÍCIO 1 ---------------------------

-- CRIANDO O BANCO DE DADOS 
CREATE DATABASE sprint1 ; 

-- SELECIONANDO O BANCO DE DADOS
USE sprint1 ; 

-- CRIANDO A TABELA 
CREATE TABLE Atleta (
idAtleta INT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(40),
modalidade VARCHAR(40), 
qtdMedalha INT 
); 

ALTER TABLE Atleta MODIFY COLUMN idAtleta INT AUTO_INCREMENT ; 

-- INSERINDO OS DADOS 
INSERT INTO Atleta VALUES 
(null, 'Rebeca Andrade', 'Ginástica', '6'), 
(null, 'Flávia Saraiva', 'Ginástica', '1'),
(null, 'Usain Bolt', 'Atletismo', '8'), 
(null, 'Michael Phelps', 'Natação', '28'),
(null, 'Jesse Owens', 'Atletismo', '4'),
(null, 'César Cielo', 'Natação', '3') ;

-- EXIBIR TODOS OS DADOS DA TABELA
SELECT * FROM Atleta ; 

-- ATUALIZAR A QUANTIDADE DE MEDALHAS DO ATLETA ID=1
UPDATE Atleta SET qtdMedalha = '8'
WHERE idAtleta = 1 ; 

-- EXIBIR 
SELECT * FROM Atleta ; 

-- ATUALIZAR QUANTIDADE MEDALHAS DOS ATLETAS ID=2 E ID=3
UPDATE Atleta SET qtdMedalha = 5
	WHERE idAtleta = 2;
    
UPDATE Atleta SET qtdMedalha = 5
	WHERE idAtleta = 6; 
    
-- EXIBIR 
SELECT * FROM Atleta ; 

-- ATUALIZAR NOME DO ATLETA ID=4
UPDATE Atleta SET nome = 'Trovão Negro'
	WHERE idAtleta = 4 ; 
    
-- EXIBIR 
SELECT * FROM Atleta ; 

-- ADICIONAR O CAMPO dtNasc, COM A DATA DE NASCIMENTO DOS ATLETAS
ALTER TABLE Atleta ADD COLUMN dtNasc DATE ; 

-- EXIBIR 
SELECT * FROM Atleta ; 

-- INSERINDO DATA DE NASCIMENTO 
UPDATE Atleta SET dtNasc = '1999-05-08'
	WHERE idAtleta = 1; 
UPDATE Atleta SET dtNasc = '1999-09-30'
	WHERE idAtleta = 2; 
UPDATE Atleta SET dtNasc = '1986-08-21'	
    WHERE idAtleta = 3; 
UPDATE Atleta SET dtNasc = '1985-06-30'
	WHERE idAtleta = 4; 
UPDATE Atleta SET dtNasc = '1913-07-12'
	WHERE idAtleta = 5; 
UPDATE Atleta SET dtNasc = '1987-01-10'
	WHERE idAtleta = 6; 
    
-- EXIBIR 
SELECT * FROM Atleta ; 

DELETE FROM Atleta 
	WHERE idAtleta = 5 ; 
    
-- EXIBIR 
SELECT * FROM Atleta ; 

-- EXIBIR OS ATLETAS CUJA MODALIDADE É DIFERENTE DE GINASTICA
SELECT * FROM Atleta 
	WHERE modalidade <> 'Ginástica' ; 
    
-- EXIBIR OS ATLETAS QUE TEM MAIS DE 3 MEDALHAS
SELECT * FROM Atleta 
	WHERE qtdMedalha > 3 ; 
    
-- MODIFICAR A COLUNA MODALIDADE DE 40 PARA 60 
ALTER TABLE Atleta MODIFY COLUMN modalidade VARCHAR(60) ; 

-- DESCREVER A TABELA 
DESCRIBE Atleta ;

-- FIM DO EXERCÍCIO 1 ---------------------------------------------------------- 

-- EXERCÍCIO 2 ---------------------------------------------------------------------------

-- SELECIONAR O BANCO DE DADOS
USE sprint1 ;

-- CRIANDO A TABELA
CREATE TABLE Musica (
idMusica INT PRIMARY KEY, 
titulo VARCHAR(40), 
artista VARCHAR(40), 
genero VARCHAR(40) 
);

-- INSERINDO DADOS 
INSERT INTO Musica VALUES 
('01', 'Jesus Chorou', 'Racionais MCs', 'Rap/Hip Hop'), 
('02', 'Tô ouvindo alguém me chamar', 'Racionais MCs', 'Rap/Hip Hop'), 
('03', 'Money Trees', 'Kendrick Lamar', 'Rap/Hip Hop'), 
('04', 'Onda', 'Cassiano', 'Soul/MPB'), 
('05', 'Acenda o Farol', 'Tim Maia', 'Soul/MPB'),
('06', 'Lábios de Mel', 'Tim Maia', 'Soul/MPB'),
('07', 'Trem das Onze', 'Adoniran Barbosa', 'Samba'); 

-- EXIBIR TODOS OS DADOS DA TABELA 
SELECT * FROM Musica ; 

-- ADICIONAR O CAMPO CURTIDAS NA TABELA 
ALTER TABLE Musica ADD COLUMN curtidas INT ; 

-- EXIBIR 
SELECT * FROM Musica ;

-- INSERINDO DADOS NA COLUNA CURTIDAS 
UPDATE Musica SET curtidas = 1000
	WHERE idMusica = 1 ; 
UPDATE Musica SET curtidas = 3200
	WHERE idMusica = 2 ;   
UPDATE Musica SET curtidas = 800
	WHERE idMusica = 3 ;
UPDATE Musica SET curtidas = 950
	WHERE idMusica = 4 ; 
UPDATE Musica SET curtidas = 1200
	WHERE idMusica = 5 ; 
UPDATE Musica SET curtidas = 4000
	WHERE idMusica = 6 ; 
UPDATE Musica SET curtidas = 1500
	WHERE idMusica = 7 ; 

-- EXIBIR 
SELECT * FROM Musica ; 

-- MODIFICAR O CAMPO ARTISTA PARA TAMANHO 80
ALTER TABLE Musica MODIFY COLUMN artista VARCHAR(80) ; 

-- DESCREVER TABELA
DESCRIBE Musica ; 

-- ATUALIZAR QUANTIDADE DE CURTIDAS ID=1
UPDATE Musica SET curtidas = 2300 
	WHERE idMusica = 1 ; 
    
-- EXIBIR 
SELECT * FROM Musica ; 

-- ATUALIZAR QUANTIDADE DE CURTIDAS DAS MUSICAS COM ID=2 E ID=3
UPDATE Musica SET curtidas = 3800 
	WHERE idMusica = 2; 
UPDATE Musica SET curtidas = 900
	WHERE idMusica = 3 ; 
    
-- EXIBIR 
SELECT * FROM Musica ; 

-- ATUALIZAR O NOME DA MUSICA COM ID=5
UPDATE Musica SET titulo = 'Do Leme ao Pontal'
	WHERE idMusica = 5 ; 
    
-- EXIBIR 
SELECT * FROM Musica ; 

-- EXCLUIR A MUSICA COM ID=4
DELETE FROM Musica 
	WHERE idMusica = 4 ; 
    
-- EXIBIR 
SELECT * FROM Musica ; 

-- EXIBIR MUSICAS COM O GENERO DIFERENTE DE RAP
SELECT * FROM Musica 
	WHERE genero <> 'Rap/Hip Hop' ; 
    

-- EXIBIR AS MUSICAS QUE TEM CURTIDAS MAIORES OU IGUAIS A 1000 
SELECT * FROM Musica 
	WHERE curtidas >= 1000 ; 
    
-- DESCREVER A TABELA
DESCRIBE Musica ; 

-- LIMPAR DADOS DA TABELA (COLOCAREI EM COMENTÁRIO PARA NÃO TER PERIGO DELE RODAR)
-- TRUNCATE Musica ;     

-- FIM DO EXERCÍCIO 2 ---------------------------------------------------

-- EXERCÍCIO 3 -------------------------------------------------------------------

-- SELECIONANDO BANCO DE DADOS
USE sprint1; 

-- CRIANDO A TABELA 
CREATE TABLE Filme (
idFilme INT PRIMARY KEY, 
titulo VARCHAR(50), 
genero VARCHAR(50), 
diretor VARCHAR(40) 
); 

-- INSERINDO DADOS 
INSERT INTO Filme VALUES
('01', 'Prenda-me Se For Capaz', 'Drama', 'Steven Spielberg'), 
('02', 'Impacto Profundo', 'Drama', 'Steven Spielberg'), 
('03', 'Bastardos Inglórios', 'Ação', 'Quentin Tarantino'), 
('04', 'Django Livre', 'Ação', 'Quentin Tarantino'), 
('05', 'Interestelar', 'Ficção', 'Christopher Nolan'), 
('06', 'Batman: O Cavaleiro das Trevas', 'Ficção', 'Christopher Nolan'), 
('07', 'Batman: O Cavaleiro das Trevas Ressurge', 'Ficção', 'Christopher Nolan'); 

-- EXIBIR TODOS OS DADOS 
SELECT * FROM Filme ; 

-- ADICIONAR O CAMPO PROTAGONISTA
ALTER TABLE Filme ADD COLUMN protagonista VARCHAR(50) ; 

-- INSERIR DADOS DO CAMPO PROTAGONISTA 
UPDATE Filme SET protagonista = 'Frank Abagnale Jr.' 
	WHERE idFilme = 1 ; 
UPDATE Filme SET protagonista = 'protagonista anônimo' 
	WHERE idFilme = 2 ;
UPDATE Filme SET protagonista = 'protagionista tal' 
	WHERE idFilme = 3 ; 
UPDATE Filme SET protagonista = 'protagonista desconhecido' 
	WHERE idFilme = 4 ;
UPDATE Filme SET protagonista = 'protagonista legal' 
	WHERE idFilme = 5 ; 
UPDATE Filme SET protagonista = 'Protagonista Ótimo' 
	WHERE idFilme = 6 ; 
UPDATE Filme SET protagonista = 'protagonista igual' 
	WHERE idFilme = 7 ; 
    
-- MODIFICAR O CAMPO DIRETOR DE 40 PARA 150
ALTER TABLE Filme MODIFY COLUMN diretor VARCHAR(150) ; 

-- ATUALIZAR O DIRETOR DO FILME COM ID=5
UPDATE Filme SET diretor = 'James Cameron' 
	WHERE idFilme = 5 ; 
    
-- ATUALIZAR DIRETOR DOS FILMES COM ID=2 E ID=7
UPDATE Filme SET diretor = 'Wagner Moura'
	WHERE idFilme = 2 ; 
UPDATE Filme SET diretor = 'Jordan Peele' 
	WHERE idFilme = 7 ;
    
-- ATUALIZAR O TITULO DO FILME COM O ID=6
UPDATE Filme SET titulo = 'A volta dos que não foram'
	WHERE idFilme = 6 ; 
    
-- EXCLUIR O FILME ID=3
DELETE FROM Filme
	WHERE idFilme = 3 ; 
    
-- EXIBIR OS FILMES QUE O GENERO É DIFERENTE DE DRAMA 
SELECT * FROM Filme
	WHERE genero <> 'Drama' ; 
    
-- EXIBIR OS DADOS ONDE O GENERO É IGUAL A AÇÃO 
SELECT * FROM Filme 
	WHERE genero = 'Ação' ; 
    
-- DESCREVER A TABELA MOSTRANDO AS ATUALIZAÇÕES EM PROTAGONISTA E DIRETOR
DESCRIBE Filme ; 

-- LIMPAR OS DADOS DA TABELA (COLOCAREI COMO COMENTÁRIO) 
-- TRUNCATE Filme ; 

-- FIM DO EXERCÍCIO 3 -----------------------------------------------------------------------------------


-- EXERCÍCIO 4 -----------------------------------------------------------------------------------------------

-- SELECIONANDO BANCO DE DADOS 
USE sprint1 ; 

CREATE TABLE Professor ( 
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40), 
dtNasc DATE 
); 

-- INSERINDO OS DADOS 
INSERT INTO Professor VALUES 
('01', 'Vivian', 'Banco de Dados', '1983-10-13'), 
('02', 'Marcos', 'Tecnologia da Informação', '1981-07-23'), 
('03', 'Frizza', 'Pesquisa e Inovação', '1961-03-16'), 
('04', 'Caio', 'Algoritmos', '1996-08-07'), 
('05', 'Marcio', 'Introdução a Sistemas Operacionais', '1997-05-30'),
('06', 'Marise', 'Arquitetura Computacional', '1960-11-21') ;

-- EXIBIR TODOS OS DADOS DA TABELA 
SELECT * FROM Professor ; 

-- ADICIONAR

