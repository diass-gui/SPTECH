-- CRIANDO O BANCO DE DADOS
CREATE DATABASE desenhoAnimado ; 

-- SELECIONANDO BANCO DE DADOS 
USE desenhoAnimado ; 

-- CRIANDO TABELA
CREATE TABLE d_animado (
id INT PRIMARY KEY AUTO_INCREMENT, 
titulo VARCHAR(50),
dtLancamento DATE, 
emissora VARCHAR(50), 
Classificacao INT, 
StatusDesenho VARCHAR(15),
Nota INT, 
CONSTRAINT chkNota CHECK (Nota IN(1, 2, 3, 4, 5))
)AUTO_INCREMENT = 10 ;  

-- INSERINDO DADOS
INSERT INTO d_animado VALUES 
(default, 'Acceleracers','2005-01-08', 'Cartoon Network', '10', 'Cancelado', 5), 
(default, 'Hot Wheels: Battle Force 5','2009-08-28', 'Cartoon Network', '00', 'Finalizado', 4), 
(default, 'Masha e o Urso','2009-01-07', 'SBT', '00', 'Finalizado', 2), 
(default, 'Turma da Monica','1976-12-24', 'Globo', '00', 'Finalizado', 4), 
(default, 'The Boondocks','2005-11-06', 'Cartoon Network', '14', 'Finalizado', 5); 

-- EXIBINDO OS DADOS
SELECT * FROM d_animado ; 

-- EXIBINDO OS DESENHOS COM CLASSIFICAÇAO < 14 
SELECT * FROM d_animado 
	WHERE Classificacao <= 14 ;
    
-- EXIBINDO DESENHOS DA MESMA EMISSORA
SELECT * FROM d_animado 
	WHERE emissora = 'Cartoon Network' ; 

-- MODIFICANDO O CAMPO STATUS
ALTER TABLE d_animado MODIFY COLUMN StatusDesenho VARCHAR(15) CONSTRAINT chkStatus CHECK(StatusDesenho IN('Exibindo', 'Finalizado', 'Cancelado')) ; 

-- MODIFICAR STATUS EXIBINDO PARA FINALIZADO PELO ID
UPDATE d_animado SET StatusDesenho = 'Finalizado'
	WHERE id = 17 ; 
UPDATE d_animado SET StatusDesenho = 'Finalizado'
	WHERE id = 18 ; 

-- DELETANDO A LINHA DO DESENHO ID 19
DELETE FROM d_animado
	WHERE id = 19 ; 
    
-- EXIBIR SÓ OS DESENHOS COM DETERMINADA LETRA
SELECT * FROM d_animado 
	WHERE titulo LIKE 'A%' ; 
    
-- RENOMEANDO A COLUNA CLASSIFICAÇAO
ALTER TABLE d_animado RENAME COLUMN Classificacao TO classificacaoIndicativa ; 

-- ALTERANDO A DATA DE LANÇAMENTO E A NOTA
UPDATE d_animado SET dtLancamento = '2010-01-08'
	WHERE id = 15 ;
UPDATE d_animado SET Nota = 4
	WHERE id = 15 ;

-- LIMPANDO OS DADOS DA TABELA 
TRUNCATE TABLE d_animado ; 

-- REMOVENDO A REGRA DO STATUS DO DESENHO 
ALTER TABLE d_animado MODIFY COLUMN StatusDesenho VARCHAR(15) ; 

-- FIM DO EXERCÍCIO 3 -----------------------------------------

-- EXERCÍCIO 4 ---------------------------------------------------------------------------------

-- CRIANDO O BANCO DE DADOS
CREATE DATABASE estoque ; 

-- SELECIONANDO O BANCO DE DADOS 
USE estoque ; 

-- CRIANDO A TABELA
CREATE TABLE MisteriosSA (
id INT PRIMARY KEY, 
nome VARCHAR(50), 
dtCompra DATE, 
preco DECIMAL(5, 2), 
peso DECIMAL(4, 2), 
dtRetirada DATE 
); 

-- INSERINDO DADOS 
INSERT INTO MisteriosSA VALUES 
(01, 'Biscoito Scooby', '2024-08-28', 8.00, 67.00, '1111-11-11'), 
(02, 'Café', '2024-08-20', 17.99, 99.00, '1111-11-11'), 
(03, 'Banana', '2024-08-25', 7.00, 99.99, '1111-11-11'), 
(04, 'Maça', '2024-08-24', 6.00, 77.00, '1111-11-11'), 
(05, 'Chocolate', '2024-08-17', 10.00, 90.00, '1111-11-11') ;

-- VERIFICAR SE OS VALORES FORAM INSERIDOS CORRETAMENTE 
SELECT * FROM MisteriosSA ;

-- EXIBINDO A PARTIR DA COMPRA MAIS ANTIGA
SELECT nome, dtCompra, id FROM MisteriosSA ORDER BY dtCompra ASC ; 

-- ATUALIZAR DATA DE RETIRADA DO PRODUTO BISCOITO SOOBY
UPDATE MisteriosSA SET dtRetirada = '2024-07-19'
	WHERE id = 01  ; 
    
-- RENOMEAR COLUNA ID
ALTER TABLE MisteriosSA RENAME COLUMN id TO idComida; 

-- CHECK PARA OS ALIMENTOS SEREM BISCOITO SCOOBY OU CACHORRO QUENTE
ALTER TABLE MisteriosSA MODIFY COLUMN nome VARCHAR(50) CONSTRAINT chknome CHECK(nome IN('Biscoito Scooby', 'Cachorro-Quente'));

UPDATE MisteriosSA SET nome = 'Biscoito Scooby' 
	WHERE idComida = 3 ; 
UPDATE MisteriosSA SET nome = 'Cachorro Quente' 
	WHERE idComida = 4 ; 
UPDATE MisteriosSA SET nome = 'Biscoito Scooby' 
	WHERE idComida = 5 ; 
    
--  EXIBIR OS PRODUTOS ALTERANDO A FORMA DE EXIBIR AS COLUNAS
SELECT *, dtCompra AS 'data da compra', 
dtRetirada AS 'Data de retirada' FROM MisteriosSA
	WHERE nome = 'Biscoito Scooby'; 

-- EXIBIR PRODUTO COMPRADO ATÉ JULHO
SELECT * FROM MisteriosSA
	WHERE dtCompra < '2024-07-25' ; 

-- EXIBIR PRODUTOS MAIS CARO QUE 30.50 
SELECT * FROM MisteriosSA 
	WHERE preco > 30.50 ; 

-- LIMPANDO A TABELA
TRUNCATE TABLE MisteriosSA ; 

-- FIM DO EXERCÍCIO 4 ----------------------------


-- EXERCÍCIO 5 ---------------------------------------------------------------------
