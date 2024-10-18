


--Buscar o nome e ano dos filmes
SELECT Id,Nome,Ano FROM Filmes

--Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome,Ano FROM Filmes ORDER BY Ano

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome,Ano,Duracao 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Buscar os filmes lançados em 1997
SELECT Nome,Ano,Duracao
FROM Filmes
WHERE Ano = 1997

--Buscar os filmes lançados APÓS o ano 2000
SELECT Nome,Ano,Duracao
FROM Filmes
WHERE ano > 2000

--Buscar os filmes com a duracao maior que 100 e menor que 150, 
--ordenando pela duracao em ordem crescente
SELECT Nome,Ano,Duracao 
FROM Filmes
WHERE duracao > 100 AND duracao <= 150
ORDER BY Duracao

-- Buscar a quantidade de filmes lançadas no ano,
--agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano,COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC

--Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero  = 'M'

--Buscar os Atores do gênero feminino, retornando o PrimeiroNome, 
--UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome,UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 