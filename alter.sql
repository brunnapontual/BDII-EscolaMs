-- 1. Adicionar a coluna 'Regente' na tabela 'orquestra' 

ALTER TABLE orquestra 

ADD COLUMN Regente VARCHAR(45); 
 

-- 2. Modificar o tipo de dado da coluna 'Nome' na tabela 'sinfonia' para VARCHAR(100) 

ALTER TABLE sinfonia 

MODIFY COLUMN Nome VARCHAR(100) NOT NULL; 


-- 3. Adicionar uma constraint de UNIQUE na coluna 'Nome' da tabela 'sinfonia' 

ALTER TABLE sinfonia 

ADD UNIQUE (Nome); 


-- 4. Remover a constraint de chave estrangeira 'fk_Orquestra_Sinfonia1' da tabela 'orquestra' 

ALTER TABLE orquestra 

DROP FOREIGN KEY fk_Orquestra_Sinfonia1; 


-- 5. Adicionar uma nova coluna 'Email' na tabela 'musicos' 

ALTER TABLE musicos 

ADD COLUMN Email VARCHAR(100); 


-- 6. Modificar a coluna 'Instrumento' na tabela 'musicos' para aceitar valores NULL 

ALTER TABLE musicos 

MODIFY COLUMN Instrumento VARCHAR(45) NULL; 


-- 7. Adicionar um índice na coluna 'Compositor' da tabela 'sinfonia' 

ALTER TABLE sinfonia 

ADD INDEX idx_compositor (Compositor); 
 

-- 8. Renomear a coluna 'Dt_Criacao' para 'Data_Criacao' na tabela 'orquestra' 

ALTER TABLE orquestra 

CHANGE COLUMN Dt_Criacao Data_Criacao DATE NOT NULL; 
 

-- 9. Adicionar uma constraint de DEFAULT para a coluna 'Nacionalidade' na tabela 'musicos' 

ALTER TABLE musicos 

ALTER COLUMN Nacionalidade SET DEFAULT 'Brasileira'; 


-- 10. Remover a tabela 'instrumento' (assumindo que a informação de instrumento já está em 'musicos') 

DROP TABLE instrumento; 
