USE escola_musica; 

-- 1 

SELECT o.Nome AS Orquestra, m.Nome AS Musico 

FROM musicos m 

JOIN orquestra o ON m.Orquestra_IDorquestra = o.IDorquestra; 

 

-- 2 

SELECT o.Nome AS Orquestra, COUNT(m.CPF) AS Total_Musicos 

FROM orquestra o 

LEFT JOIN musicos m ON o.IDorquestra = m.Orquestra_IDorquestra 

GROUP BY o.Nome; 

 

-- 3 

SELECT s.Nome, COUNT(o.IDorquestra) AS Qtde_Orquestras 

FROM sinfonia s 

LEFT JOIN orquestra o ON s.IDsinfonia = o.Sinfonia_IDsinfonia 

GROUP BY s.Nome 

ORDER BY Qtde_Orquestras DESC; 

 

-- 4 

SELECT m.Nome, i.Instrumento 

FROM musicos m 

JOIN instrumento i ON m.CPF = i.musicos_CPF; 

 

-- 5 

SELECT m.Nome 

FROM musicos m 

WHERE m.CPF NOT IN (SELECT DISTINCT musicos_CPF FROM instrumento); 

 

-- 6 

SELECT Nacionalidade, COUNT(*) AS Qtde 

FROM musicos 

GROUP BY Nacionalidade; 

 

-- 7 

SELECT s.Nome AS Sinfonia, COUNT(DISTINCT f.musicos_CPF) AS Total_Musicos 

FROM sinfonia s 

JOIN funcao f ON s.IDsinfonia = f.Sinfonia_IDsinfonia 

GROUP BY s.Nome 

ORDER BY Total_Musicos DESC; 

 

-- 8 

SELECT m.Nome, COUNT(f.IDfuncao) AS Qtde_Funcoes 

FROM musicos m 

JOIN funcao f ON m.CPF = f.musicos_CPF 

GROUP BY m.Nome 

HAVING Qtde_Funcoes > 1; 

 

-- 9 

SELECT o.Nome AS Orquestra, o.Cidade, s.Nome AS Sinfonia 

FROM orquestra o 

JOIN sinfonia s ON o.Sinfonia_IDsinfonia = s.IDsinfonia; 

 

-- 10 

SELECT Nome 

FROM sinfonia 

WHERE Compositor = 'Beethoven'; 

 

-- 11 

SELECT Nome, Dt_Nascimento 

FROM musicos 

WHERE YEAR(Dt_Nascimento) > 2000; 

 

-- 12 

SELECT m.Nome AS Musico, s.Nome AS Sinfonia 

FROM funcao f 

JOIN musicos m ON f.musicos_CPF = m.CPF 

JOIN sinfonia s ON f.Sinfonia_IDsinfonia = s.IDsinfonia 

WHERE s.Dt_Criacao < '1900-01-01'; 

 

-- 13 

SELECT AVG(YEAR(CURDATE()) - YEAR(Dt_Nascimento)) AS Idade_Media 

FROM musicos; 

 

-- 14 

SELECT m.Nome, COUNT(i.IDinstrumento) AS Qtde_Instrumentos 

FROM musicos m 

JOIN instrumento i ON m.CPF = i.musicos_CPF 

GROUP BY m.Nome 

HAVING Qtde_Instrumentos > 2; 

 

-- 15 

SELECT Nome 

FROM sinfonia 

WHERE IDsinfonia NOT IN (SELECT DISTINCT Sinfonia_IDsinfonia FROM orquestra); 

 

-- 16 

SELECT m.Nome 

FROM musicos m 

WHERE m.CPF IN (SELECT musicos_CPF FROM funcao) 

AND m.CPF NOT IN (SELECT musicos_CPF FROM instrumento); 

 

-- 17 

SELECT o.Nome 

FROM orquestra o 

LEFT JOIN musicos m ON o.IDorquestra = m.Orquestra_IDorquestra 

WHERE m.CPF IS NULL; 

 

-- 18 

SELECT Nome, Dt_Criacao 

FROM sinfonia 

ORDER BY Dt_Criacao ASC; 

 

-- 19 

SELECT m.Nome, f.Nome_Funcao, f.DT_Funcao 

FROM funcao f 

JOIN musicos m ON f.musicos_CPF = m.CPF 

WHERE YEAR(f.DT_Funcao) >= YEAR(CURDATE()) - 5; 

 

-- 20 

SELECT Nome, COUNT(*) AS Qtde 

FROM musicos 

GROUP BY Nome 

HAVING Qtde > 1; 
