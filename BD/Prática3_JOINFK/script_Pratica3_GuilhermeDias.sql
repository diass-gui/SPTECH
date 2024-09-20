-- EXERCÍCIO 1 : ATLETA E PAÍS --

CREATE DATABASE sprint2 ; 

USE sprint2 ; 

CREATE TABLE País (
idPais INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(30), 
capital VARCHAR(40) 
); 

INSERT INTO País VALUES 
(default, 'Estados Unidos', 'Washington'), 
(default, 'Brasil', 'Brasília'), 
(default, 'Jamaica', 'Kingston'),
(default, 'Romênia', 'Bucareste') ; 

CREATE TABLE Atleta (
idAtleta INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(40), 
modalidade VARCHAR(40), 
qtdMedalha INT, 
fkPaís INT, 
CONSTRAINT fkAtletaEmpresa FOREIGN KEY(fkPaís) 
	REFERENCES País(idPais)
); 

INSERT INTO Atleta VALUES 
(default, 'Michael Phelps', 'Natação', 28, 1), 
(default, 'César Cielo', 'Natação', 3, 2), 
(default, 'Jesse Owens', 'Atletismo', 4, 1), 
(default, 'Usain Bolt', 'Atletismo', 8, 3), 
(default, 'Rebeca Andrade', 'Ginástica', 6, 2), 
(default, 'Nadia Comaneci', 'Ginástica', 9, 4); 

SELECT * FROM Atleta ; 
    
SELECT * FROM Atleta JOIN País ON idPais = fkPaís; 

SELECT Atleta.nome, País.nome FROM Atleta JOIN País ON idPais = fkPaís ; 

SELECT * FROM Atleta JOIN País ON idPais = fkPaís 
	WHERE capital = 'Washington'; 
    
-- FIM DO EXERCÍCIO 1 ---------------------------------------------------------------

-- EXERCÍCIO 2 ---------------------------------
USE sprint2; 

CREATE TABLE Album (
idAlbum INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(45), 
tipo CHAR(8)
CONSTRAINT ckTipo CHECK(tipo IN('digital', 'físico')), 
dtLancamento DATE 
); 

INSERT INTO Album VALUES
(default, 'Sobrevivendo no Inferno', 'físico', '1997-12-05'), 
(default, 'Illmatic', 'físico', '1994-04-19'), 
(default, 'DAMN', 'digital', '2017-04-14'); 

SELECT * FROM Album ; 

CREATE TABLE música (
idMusica INT PRIMARY KEY AUTO_INCREMENT, 
titulo VARCHAR(45), 
artista VARCHAR(40), 
genero VARCHAR(45), 
fkAlbum INT, 
CONSTRAINT fkMusicaAlbum FOREIGN KEY (fkAlbum) 
	REFERENCES Album(idAlbum) 
);

INSERT INTO música VALUES 
(default, 'Fórmula Mágica da Paz', 'Racionais MCS', 'Rap', 1), 
(default, 'Jorge de Capadócia', 'Racionais MCS', 'Rap', 1), 
(default, 'Periferia é Periferia', 'Racionais MCS', 'Rap', 1), 
(default, 'One Love', 'Nas', 'Rap', 2), 
(default, 'N.Y State of Mind', 'Nas', 'Rap', 2), 
(default, 'FEAR', 'Kendrick Lamar', 'Rap', 3), 
(default, 'LOYALTY', 'Kendrick Lamar', 'Rap', 3); 

SELECT * FROM música; 

SELECT * FROM música JOIN Album ON idAlbum = fkAlbum; 

SELECT música.titulo, Album.nome FROM música JOIN Album ON idAlbum = fkAlbum; 

SELECT * FROM música JOIN Album ON idAlbum = fkAlbum 
	WHERE tipo = 'físico';  
