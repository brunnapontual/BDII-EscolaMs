--1. deletar a sinfonia "Flowers" 
delete from sinfonia where Nome = 'Flowers'; 

--2. deletar a orquestra em Toronto 
delete from orquestra where Cidade = 'Toronto'; 

--3. deletar o músico com o CPF '111.222.333-45' 
delete from musicos where CPF = '111.222.333-45'; 

--4. deletar todas as funções relacionadas à sinfonia "Hallelujah" 
delete from funcao where Nome_Sinfonia = 'Hallelujah'; 

--5. deletar todos os instrumentos associados ao músico '987.654.321-09 
delete from instrumento where Musicos_IDmusicos = '987.654.321-09';  

--6. deletar todas as sinfonias criadas antes de 1970 
delete from sinfonia where Dt_Criacao < '1970-01-01'; 

--7. deletar todas as orquestras dos Estados Unidos 
delete from orquestra where Pais = 'Estados Unidos'; 

--8. deletar todos os músicos que tocam vocal 
delete from musicos where Instrumento = 'Baixo'; 

--9. deletar todas as funções que ocorrerão após '2025-09-01' 
delete from funcao where DT_Funcao > '2025-09-01'; 

--10. deletar todos os instrumentos da sinfonia com ID 12 
delete from instrumento where Sinfonia_IDsinfonia = 12; 

--11. atualizar o compositor da sinfonia "As It Was" para "Harry E. Styles" 
update sinfonia set Compositor = 'Harry E. Styles' where Nome = 'As It Was'; 

--12. atualizar a cidade da orquestra "The British Harmony Ensemble" para "Manchester" 
update orquestra set Cidade = 'Manchester' where Nome = 'The British Harmony Ensemble'; 

--13. atualizar o instrumento do músico '444.555.666-78' para 'Violão' 
update musicos set Instrumento = 'Guitarra Elétrica' where CPF = '444.555.666-78'; 

--14. atualizar o nome da função onde o músico é 'Vocalista Principal' para 'Solista' 
update funcao set Nome_Funcao = 'Solista' where Nome_Funcao = 'Vocalista Principal'; 

--15. atualizar o instrumento 'Vocal' associado ao músico '123.456.789-10' para 'Voz' 
update instrumento set Instrumento = 'Voz' where Musicos_IDmusicos = '123.456.789-10' and Instrumento = 'Vocal'; 

--16. atualizar a data de criação de todas as sinfonias para '2024-01-01' 
update sinfonia set Dt_Criacao = '2024-01-01'; 

--17. atualizar o país de todas as orquestras que não são do brasil para 'Internacional' 
update orquestra set Pais = 'Internacional' where Pais != 'Brasil'; 

--18. atualizar a nacionalidade de todos os músicos americanos para 'Norte-Americano' 
update musicos set Nacionalidade = 'Norte-Americano' where Nacionalidade = 'Americana'; 

--19. atualizar o nome do músico Abel para seu nome artístico mais conhecido 
update musicos set Nome = 'The Weeknd' where Nome = 'Abel Makkonen Tesfaye'; 

--20. atualizar o ID da sinfonia na tabela orquestra para o ID + 1 para todas as orquestras 
update orquestra set Sinfonia_IDsinfonia = Sinfonia_IDsinfonia + 1;
