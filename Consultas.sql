--- 1
SELECT 
    Nome,
    Ano
FROM Filmes;
--- 2
SELECT 
    Nome,
    Ano
FROM Filmes 
ORDER BY Ano ASC;
--- 3
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';
--- 4
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano = 1997;
--- 5
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > 2000;
--- 6
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100 
AND Duracao < 150 
ORDER BY Duracao DESC;
--- 7
SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;
--- 8
SELECT
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'Masculino';
--- 9
SELECT
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;
--- 10
SELECT 
    f.Nome 
AS Filme, g.Nome 
AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.FilmeId
JOIN Generos g ON fg.GeneroId = g.Id;
--- 11
SELECT 
    f.Nome 
AS Filme, g.Nome 
AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.FilmeId
JOIN Generos g ON fg.GeneroId = g.Id
WHERE g.Nome = 'Mistério';
--- 12
SELECT 
    f.Nome 
AS Filme, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
JOIN ElencoFilme e ON f.Id = e.FilmeId
JOIN Atores a ON e.AtorId = a.Id;
