

SELECT * FROM Jogadores

ALTER TABLE Jogadores
ADD Camisa INT;

INSERT INTO Jogadores(Nome, Idade, Posição, Equipe) VALUES ('Memphis Depay', 31, 'Atacante', 'Corinthians')
INSERT INTO Jogadores(Nome, Idade, Posição, Equipe) VALUES ('Rodrigo Garro', 26, 'Meio-Campo', 'Corinthians')
INSERT INTO Jogadores(Nome, Idade, Posição, Equipe) VALUES ('Yuri Alberto', 25, 'Atacante', 'Corinthians')
INSERT INTO Jogadores(Nome, Idade, Posição, Equipe) VALUES ('Hugo Souza', 24, 'Goleiro', 'Corinthians')
INSERT INTO Jogadores(Nome, Idade, Posição, Equipe) VALUES ('Raniele', 26, 'Volante', 'Corinthians')
INSERT INTO Jogadores(Nome, Idade, Posição, Equipe) VALUES ('Breno Bidon', 20, 'Volante', 'Corinthians')


UPDATE Jogadores
SET Camisa = 10
WHERE Nome = 'Memphis Depay'

UPDATE Jogadores
SET Camisa = 9
WHERE Nome = 'Yuri Alberto'

UPDATE Jogadores
SET Camisa = 8
WHERE Nome = 'Rodrigo Garro'

UPDATE Jogadores
SET Camisa = 1
WHERE Nome = 'Hugo Souza'

UPDATE Jogadores
SET Camisa = 14
WHERE Nome = 'Raniele'

SELECT Nome, Posição, Camisa
FROM Jogadores
ORDER BY Camisa ASC

SELECT Nome, Posição
FROM Jogadores
WHERE Camisa IS NULL

UPDATE Jogadores
SET Camisa = 27
WHERE Nome = 'Breno Bidon'

SELECT * FROM Jogadores

SELECT Nome, Idade, Posição
FROM Jogadores
WHERE Idade BETWEEN 23 AND 30
ORDER BY 

