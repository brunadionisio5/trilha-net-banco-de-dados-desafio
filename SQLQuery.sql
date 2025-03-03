--1
SELECT Nome, Ano 
FROM Filmes

--2
SELECT Nome, Ano 
FROM Filmes 
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De volta para o futuro'

--4
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Ano = '1997'

--5
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Ano > '2000'

--6
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao > '100' AND Duracao < '150' 
ORDER BY Duracao

--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'
	
--9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 

--11
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 
WHERE  Generos.Genero = 'Mistério'

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
FROM ATORES 
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
