-----------CRIAÇÃO DE TAB.CLIENTE--------------
CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(100),
	email VARCHAR(100),
	telefone VARCHAR(20)
);


-----------CRIAÇÃO DE TAB.FILME-------------
CREATE TABLE filme (
	id_filme INT PRIMARY KEY IDENTITY(1,4),
	titulo VARCHAR(200),
	ano INT,
	genero VARCHAR(50)
);

------------CRIAÇÃO DE TAB.LOCACAO-------------
CREATE TABLE locacao (
	id_locacao INT PRIMARY KEY IDENTITY(1,7),
	data_locacao DATE NOT NULL,
	data_devolucao DATE,
	id_cliente INT NOT NULL, 
	id_filme INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
	FOREIGN KEY (id_filme) REFERENCES filme (id_filme)
);

---------------------------------------------------------------------


--------------INSERÇÃO DE DADOS NA TABELA CLIENTE----------
INSERT INTO cliente (nome, email, telefone) 
VALUES ('Ana Neri', 'ananeri@gmail.com', '(11) 99212-3857')

INSERT INTO cliente (nome, email, telefone)
VALUES ('Igor Ferreira', 'igorferreira@gmail.com', '(11) 99166-3471')

INSERT INTO cliente (nome, email, telefone)
VALUES ('Pedro Felipe', 'pedrofelipe@gmail.com', '(11) 99748-8573')


SELECT * FROM cliente
----------------------------------------------------------------------

----------------INSERÇÃO DE DADOS NA TABELA FILME----------------------

INSERT INTO filme (titulo, ano, genero)
VALUES ('Alice no País das Maravilhas', 1951, 'Animação/Fantasia/Aventura')

INSERT INTO filme (titulo, ano, genero)
VALUES ('Carros', 2006, 'Animação/Comédia/Aventura')

INSERT INTO filme (titulo, ano, genero)
VALUES ('Matrix', 1999, 'Ficção Científica')


SELECT * FROM filme
-----------------------------------------------------------------------

----------------INSERÇÃO DE DADOS NA TABELA LOCACAO--------------------

INSERT INTO locacao (data_locacao, data_devolucao, id_cliente, id_filme)
VALUES ('2012-10-08', '2012-10-22', 1, 1)

INSERT INTO locacao (data_locacao, data_devolucao, id_cliente, id_filme)
VALUES ('2013-08-15', '2013-08-28', 2, 5)

INSERT INTO locacao (data_locacao, data_devolucao, id_cliente, id_filme)
VALUES ('2010-02-26', '2010-03-8', 3, 9)


SELECT * FROM locacao
-----------------------------------------------------------------------

-------------------------SEÇÃO DE CONSULTAS-----------------------

SELECT L.id_locacao, C.nome AS Cliente, F.titulo AS Filme, 
L.data_locacao AS Locação, L.data_devolucao AS Devolução

FROM locacao L

JOIN cliente C ON L.id_cliente = C.id_cliente

JOIN filme F ON L.id_filme = F.id_filme

--------------------------------------------------------------------

SELECT F.titulo, L.data_locacao AS Locação, L.data_devolucao AS Devolução
FROM locacao L
JOIN filme F ON L.id_filme = F.id_filme
JOIN cliente C ON L.id_cliente = C.id_cliente
WHERE C.nome = 'Ana Neri'
