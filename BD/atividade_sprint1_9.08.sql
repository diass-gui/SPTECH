-- CRIANDO O BANCO DE DADOS
CREATE DATABASE sprint1; 

-- SELECIONANDO O BD
USE sprint1;

-- CRIANDO A TABELA 
CREATE TABLE atleta (
idAtleta INT PRIMARY KEY, 
nome VARCHAR(40), 
modalidade VARCHAR(40), 
qtdMedalha INT 
);

-- INSERINDO OS DADOS 
INSERT INTO atleta VALUES
('01', 'Rebeca Andrade', 'Ginástica', '6'), 
('03', 'Flávia Saraiva', 'Ginástica', '1'),
('02', 'Usain Bolt', 'Atletismo', '8'), 
('04', 'Michael Phelps', 'Natação', '28'),
('05', 'Jesse Owens', 'Atletismo', '4'),
('06', 'César Cielo', 'Natação', '3') ;

-- EXIBIR OS DADOS DA TABELA 
SELECT * FROM atleta ; 

-- EXIBIR APENAS OS NOMES E MEDALHAS
SELECT nome, qtdMedalha FROM atleta ; 

-- EXIBIR OS DADOS DE ATLETAS DE TAL MODALIDADE
SELECT * FROM atleta 
WHERE modalidade = 'Atletismo'; 

-- EXIBIR OS DADOS ORDENANDO PELA MODALIDADE
SELECT * FROM atleta ORDER BY modalidade ;

-- EXIBIR OS DADOS ORDENADOS PELAS MEDALHAS, DECRESCENTE
SELECT * FROM atleta ORDER BY qtdMedalha desc ; 

-- EXIBIR OS ATLETAS QUE TEM S NO NOME
SELECT * FROM atleta 
	WHERE nome LIKE '%s%' ; 
    
-- EXIBIR OS ATLETAS QUE O NOME COMEÇA COM DETERMINADA LETRA
SELECT * FROM atleta 
	WHERE nome LIKE 'J%' ; 

-- EXIBIR OS ATLETAS CUJO NOME TERMINA COM O
SELECT * FROM atleta 
	WHERE nome LIKE '%o' ; 

-- EXIBIR OS ATLETAS CUJO A PENÚLTIMA LETRA DO NOME É L 
-- ALTEREI A LETRA R PARA L POIS NÃO TEM ATLETAS COM A 
-- ESPECIFICAÇÃO MENCIONADA.
SELECT * FROM atleta
	WHERE nome LIKE '%l_' ; 
    
-- FIM DO EXERCÍCIO 1 (NÃO APLICAREI O DROP)

-- EXERCÍCIO DOIS ---------------------------------------------------------------------------------------------------

-- SELECIONAR O BANCO DE DADOS sprint1
USE sprint1 ; 

-- CRIAR A TABELA musica 
CREATE TABLE Musica ( 
idMusica INT PRIMARY KEY, 
titulo VARCHAR(40), 
artista VARCHAR(40), 
genero VARCHAR(40) 
); 

-- INSERINDO OS DADOS
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

-- EXIBIR OS ARTISTAS E TITULOS DA TABELA
SELECT titulo, artista FROM Musica ; 

-- EXIBIR APENAS OS DADOS DE DETERMINADO GÊNERO
SELECT * FROM Musica
	WHERE genero = 'Rap/Hip Hop' ; 
    
-- EXIBIR APENAS OS DADOS E MUSICAS DE TAL ARTISTA 
SELECT * FROM Musica
	WHERE artista = 'Tim Maia' ; 
    
-- EXIBIR OS DADOS ORDENADOS PELO TITULO DAS MUSICAS
SELECT * FROM Musica ORDER BY titulo ; 

-- EXIBIR OS DADOS ORDENADOS PELO ARTISTA EM ORDEM DECRESCENTE
SELECT * FROM Musica ORDER BY artista desc ; 

-- EXIBIR OS DADOS ORDENADOS CUJO O TITULO INICIA COM TAL LETRA
SELECT * FROM Musica 
	WHERE titulo LIKE 'T%' ; 
    
-- EXIBIR OS DADOS ORDENADOS CUJO ARTISTA TERMINA COM TAL LETRA 
SELECT * FROM Musica 
	WHERE artista LIKE '%s';	
    
-- EXIBIR DADOS ONDE O GENERO TENHA DETERMINADA LETRA COMO SEGUNDA LETRA
SELECT * FROM Musica 
	WHERE genero LIKE '_o%' ; 
    
-- EXIBIR DADOS ONDE O TITULO TENHA DETERMINADA LETRA COMO PENULTIMA LETRA
SELECT * FROM Musica 
	WHERE titulo LIKE '%o_' ; 
    
-- FIM DO EXERCÍCIO 2(NÃO IREI DROPAR A TABELA) ---------------------------------------------------------------------


-- EXERCÍCIO 3 ======================================================================================================

-- SELECIONAR BANCO DE DADOS 
USE sprint1 ; 

-- CRIAR A TABELA 
CREATE TABLE Filme (
idFilme INT PRIMARY KEY, 
titulo VARCHAR(50), 
genero VARCHAR(40),
diretor VARCHAR(40) 
); 

-- INSERINDO OS DADOS
INSERT INTO Filme VALUES
('01', 'Prenda-me Se For Capaz', 'Drama', 'Steven Spielberg'), 
('02', 'Impacto Profundo', 'Drama', 'Steven Spielberg'), 
('03', 'Bastardos Inglórios', 'Ação', 'Quentin Tarantino'), 
('04', 'Django Livre', 'Ação', 'Quentin Tarantino'), 
('05', 'Interestelar', 'Ficção', 'Christopher Nolan'), 
('06', 'Batman: O Cavaleiro das Trevas', 'Ficção', 'Christopher Nolan'), 
('07', 'Batman: O Cavaleiro das Trevas Ressurge', 'Ficção', 'Christopher Nolan'); 

-- EXIBIR TODOS OS DADOS DA TABELA
SELECT * FROM filme ; 

-- EXIBIR APENAS OS TITULOS E DIRETORES
SELECT titulo, diretor FROM filme ; 

-- EXIBIR OS DADOS APENAS DE UM DETERMINADO GENERO
SELECT * FROM filme
	WHERE genero = 'Ação' ; 
    
-- EXIBIR OS DADOS APENAS DE UM DETERMINADO DIRETOR 
SELECT * FROM filme
	WHERE diretor = 'Christopher Nolan' ; 
    
-- EXIBIR OS DADOS ORDENADOS PELO TITULO
SELECT * FROM filme ORDER BY titulo ; 

-- EXIBIR OS DADOS ORDENADOS PELO DIRETOR EM ORDEM DECRESCENTE
SELECT * FROM filme ORDER BY diretor desc ;

-- EXIBIR OS DADOS CUJO TITULO COMECE COM DETERMINADA LETRA
SELECT * FROM filme
	WHERE titulo LIKE 'B%' ; 
    
-- EXIBIR OS DADOS CUJO DIRETOR TERMINE COM DETERMINADA LETRA
SELECT * FROM filme
	WHERE diretor LIKE '%n' ; 
    
-- EXIBIR OS DADOS CUJO GENERO TENHA NA SEGUNDA LETRA UMA DETERMINADA LETRA
SELECT * FROM filme
	WHERE genero LIKE '_i%' ; 

-- EXIBIR OS DADOS CUJO TITULO TENHA DETERMINADA LETRA COMO PENULTIMA LETRA
SELECT * FROM filme
	WHERE titulo LIKE '%a_' ; 
    
-- FIM DO EXERCÍCIO 3(NÃO IREI DROPAR A TABELA)----------------------------------------------------------------------


-- EXERCÍCIO 4 ======================================================================================================

-- SELECIONAR O BANCO DE DADOS
USE sprint1 ; 

-- CRIAR A TABELA 
CREATE TABLE Professor (
idProfessor INT PRIMARY KEY, 
nome VARCHAR(50), 
especialidade VARCHAR(40), 
dtNasc date 
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

-- EXIBIR APENAS A ESPECIALIDADE
SELECT especialidade FROM Professor ; 

-- EXIBIR OS DADOS DE PROFESSORES DE DETERMINADA ESPECIALIDADE
SELECT * FROM Professor
	WHERE especialidade = 'Arquitetura Computacional' ;
    
-- EXIBIR OS DADOS ORDENADOS PELO NOME DO PROFESSOR
SELECT * FROM Professor ORDER BY nome ; 

-- EXIBIR OS DADOS ORDENADOS PELA DATA DE NASCIMENTO EM ORDEM DECRESCENTE
SELECT * FROM Professor ORDER BY dtNasc desc ; 

-- EXIBIR OS DADOS CUJO NOME DO PROFESSOR INICIE COM DETERMINADA LETRA
SELECT * FROM Professor
	WHERE nome LIKE 'M%' ; 
    
-- EXIBIR OS DADOS CUJO NOME DO PROFESSOR TERMINE COM DETERMINADA LETRA
SELECT * FROM Professor
	WHERE nome LIKE '%o' ; 
    
-- EXIBIR OS DADOS CUJO NOME DO PROFESSOR TENHA UMA DETERMINADA LETRA COMO SEGUNDA LETRA
SELECT * FROM Professor
	WHERE nome LIKE '_a%' ; 
    
-- EXIBIR OS DADOS CUJO A PENULTIMA LETRA DO NOME DO PROFESSOR SEJA DETERMINADA LETRA
SELECT * FROM Professor 
	WHERE nome LIKE '%i_' ; 
    
-- FIM DO EXERCÍCIO 4 -----------------------------------------------------------------------------------------------


-- EXERCÍCIO 5 ======================================================================================================

-- SELECIONAR O BANCO DE DADOS
USE sprint1 ; 

-- CRIAR A TABELA 
CREATE TABLE Curso (
idCurso INT PRIMARY KEY, 
nome VARCHAR(50), 
sigla VARCHAR(3), 
coordenador VARCHAR(40) 
);

-- INSERINDO DADOS
INSERT INTO Curso VALUES
('01', 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Gerson Santos'), 
('02', 'Sistemas de Informação', 'SIS', 'Marcio Santana'),
('03', 'Ciências da Computação', 'CCO', 'Fernando Brandão') ; 
-- OBS: NÃO SEI O COORDENADOR DOS OUTROS CURSOS, COLOQUEI NOMES DE PROFESSORES ALEATÓRIOS, GRATO.

-- EXIBIR OS DADOS DA TABELA 
SELECT * FROM Curso ; 

-- EXIBIR APENAS OS COORDENADORES
SELECT coordenador FROM Curso ; 

-- EXIBIR OS DADOS DE UMA DETERMINADA SIGLA
SELECT * FROM Curso 
	WHERE sigla = 'ADS'; 
    
-- EXIBIR OS DADOS ORDENADOS PELO NOME DO CURSO
SELECT * FROM Curso ORDER BY nome ; 

-- EXIBIR OS DADOS ORDENADOS PELO COORDENADOR EM ORDEM DECRESCENTE
SELECT * FROM Curso ORDER BY coordenador desc ; 

-- EXIBIR OS DADOS CUJO NOME DO CURSO INICIE COM DETERMINADA LETRA
SELECT * FROM Curso 
	WHERE nome LIKE 'S%' ; 
    
-- EXIBIR OS DADOS CUJO NOME DO CURSO TERMINE COM DETERMINADA LETRA 
SELECT * FROM Curso 
	WHERE nome LIKE '%o' ; 
    
-- EXIBIR OS DADOS CUJO NOME DO CURSO TENHA NA SEGUNDA LETRA UMA DETERMINADA LETRA
SELECT * FROM Curso
	WHERE nome LIKE '_i%' ; 
    
-- EXIBIR OS DADOS CUJO NOME DO CURSO TENHA NA PENULTIMA LETRA UMA DETERMINADA LETRA 
SELECT * FROM Curso 
	WHERE nome LIKE '%ã_' ; 
    
-- FIM DO EXERCÍCIO 5(NÃO DROPAREI A TABELA)-------------------------------------------------------------------------