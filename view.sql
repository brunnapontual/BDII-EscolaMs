USE escola_musica; 

-- 1. View: Lista de músicos por orquestra 

CREATE OR REPLACE VIEW vw_musicos_por_orquestra AS 

SELECT o.Nome AS Orquestra, m.Nome AS Musico 

FROM musicos m 

JOIN orquestra o ON m.Orquestra_IDorquestra = o.IDorquestra; 


-- 2. View: Total de músicos por sinfonia 

CREATE OR REPLACE VIEW vw_total_musicos_por_sinfonia AS 

SELECT s.Nome AS Sinfonia, COUNT(DISTINCT f.musicos_CPF) AS Total_Musicos 

FROM sinfonia s 

LEFT JOIN funcao f ON s.IDsinfonia = f.Sinfonia_IDsinfonia 

GROUP BY s.Nome; 


-- 3. View: Instrumentos por músico 

CREATE OR REPLACE VIEW vw_instrumentos_por_musico AS 

SELECT m.Nome AS Musico, i.Instrumento 

FROM musicos m 

JOIN instrumento i ON m.CPF = i.musicos_CPF; 


-- 4. View: Detalhes de funções atribuídas aos músicos 

CREATE OR REPLACE VIEW vw_funcoes_dos_musicos AS 

SELECT m.Nome AS Musico, f.Nome_Funcao, s.Nome AS Sinfonia, f.DT_Funcao 

FROM funcao f 

JOIN musicos m ON f.musicos_CPF = m.CPF 

JOIN sinfonia s ON f.Sinfonia_IDsinfonia = s.IDsinfonia; 


-- 5. View: Orquestras com suas respectivas sinfonias 

CREATE OR REPLACE VIEW vw_orquestras_e_sinfonias AS 

SELECT o.Nome AS Orquestra, s.Nome AS Sinfonia, s.Compositor 

FROM orquestra o 

JOIN sinfonia s ON o.Sinfonia_IDsinfonia = s.IDsinfonia; 


-- 6. View: Quantidade de instrumentos por músico 

CREATE OR REPLACE VIEW vw_musicos_com_qtde_instrumentos AS 

SELECT m.Nome AS Musico, COUNT(i.IDinstrumento) AS Qtde_Instrumentos 

FROM musicos m 

LEFT JOIN instrumento i ON m.CPF = i.musicos_CPF 

GROUP BY m.Nome; 


-- 7. View: Quantidade de músicos por nacionalidade 

CREATE OR REPLACE VIEW vw_musicos_por_nacionalidade AS 

SELECT Nacionalidade, COUNT(*) AS Qtde 

FROM musicos 

GROUP BY Nacionalidade; 


-- 8. View: Sinfonias com número de orquestras que executam 

CREATE OR REPLACE VIEW vw_sinfonias_e_orquestras AS 

SELECT s.Nome AS Sinfonia, COUNT(o.IDorquestra) AS Qtde_Orquestras 

FROM sinfonia s 

LEFT JOIN orquestra o ON s.IDsinfonia = o.Sinfonia_IDsinfonia 

GROUP BY s.Nome; 
 

-- 9. View: Músicos que não possuem instrumentos cadastrados 

CREATE OR REPLACE VIEW vw_musicos_sem_instrumentos AS 

SELECT m.Nome 

FROM musicos m 

LEFT JOIN instrumento i ON m.CPF = i.musicos_CPF 

WHERE i.IDinstrumento IS NULL; 
 

-- 10. View: Orquestras com total de músicos 

CREATE OR REPLACE VIEW vw_orquestras_com_total_musicos AS 

SELECT o.Nome AS Orquestra, COUNT(m.CPF) AS Total_Musicos 

FROM orquestra o 

LEFT JOIN musicos m ON o.IDorquestra = m.Orquestra_IDorquestra 

GROUP BY o.Nome; 
