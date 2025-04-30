USE escola_musica; 

 

SET FOREIGN_KEY_CHECKS = 0; 

 

DROP TABLE IF EXISTS instrumento; 

DROP TABLE IF EXISTS funcao; 

DROP TABLE IF EXISTS musicos; 

DROP TABLE IF EXISTS orquestra; 

DROP TABLE IF EXISTS sinfonia; 

 

SET FOREIGN_KEY_CHECKS = 1; 

 

Insert 

insert into sinfonia (Nome, Compositor, Dt_Criacao) values 

('Flowers', 'Miley Cyrus', '2023-01-13'), 

('As It Was', 'Harry Styles', '2022-03-31'), 

('Blinding Lights', 'The Weeknd', '2019-11-29'), 

('Shape of You', 'Ed Sheeran', '2017-01-06'), 

('Someone Like You', 'Adele', '2011-01-24'), 

('Bohemian Rhapsody', 'Queen', '1975-10-31'), 

('Like a Rolling Stone', 'Bob Dylan', '1965-07-20'), 

('Smells Like Teen Spirit', 'Nirvana', '1991-09-10'), 

('Billie Jean', 'Michael Jackson', '1982-11-30'), 

('Hotel California', 'Eagles', '1976-12-08'), 

('Hallelujah', 'Leonard Cohen', '1984-12-01'), 

('Imagine', 'John Lennon', '1971-09-09'); 

 

insert into orquestra (Nome, Pais, Cidade, Dt_Criacao, Sinfonia_IDsinfonia) values 

('The Pop Symphony Orchestra', 'Estados Unidos', 'Los Angeles', '2010-05-15', 1), 

('The British Harmony Ensemble', 'Reino Unido', 'Londres', '2008-09-20', 2), 

('The Weeknd Collective', 'Canadá', 'Toronto', '2015-03-10', 3), 

('Ed Sheeran Live Band', 'Reino Unido', 'Framlingham', '2012-07-01', 4), 

('The Adele String Section', 'Reino Unido', 'Londres', '2010-01-25', 5), 

('Queen Philharmonic', 'Reino Unido', 'Londres', '1973-04-09', 6), 

('The Dylan Ensemble', 'Estados Unidos', 'New York', '1962-05-24', 7), 

('Nirvana Unplugged Orchestra', 'Estados Unidos', 'Seattle', '1988-01-01', 8), 

('The Jackson Legacy Orchestra', 'Estados Unidos', 'Gary', '1971-10-08', 9), 

('The Eagles Chamber Group', 'Estados Unidos', 'Los Angeles', '1971-08-01', 10), 

('The Cohen Cinematic Orchestra', 'Canadá', 'Montreal', '1967-03-21', 11), 

('The Lennon Memorial Orchestra', 'Reino Unido', 'Liverpool', '1960-01-01', 12); 

 

insert into musicos (CPF, Nome, Nacionalidade, Instrumento, Dt_Nascimento, Orquestra_IDorquestra) values 

('111.222.333-45', 'Miley Ray Cyrus', 'Americana', 'Vocal', '1992-11-23', 1), 

('222.333.444-56', 'Harry Edward Styles', 'Britânico', 'Vocal', '1994-02-01', 2), 

('333.444.555-67', 'Abel Makkonen Tesfaye', 'Canadense', 'Vocal', '1990-02-16', 3), 

('444.555.666-78', 'Edward Christopher Sheeran', 'Britânico', 'Guitarra', '1991-02-17', 4), 

('555.666.777-89', 'Adele Laurie Blue Adkins', 'Britânica', 'Vocal', '1988-05-05', 5), 

('666.777.888-90', 'Brian Harold May', 'Britânico', 'Guitarra', '1947-07-19', 6), 

('777.888.999-01', 'Robert Allen Zimmerman', 'Americano', 'Vocal', '1941-05-24', 7), 

('888.999.000-12', 'Krist Anthony Novoselic', 'Americano', 'Baixo', '1965-05-16', 8), 

('999.000.111-23', 'Michael Joseph Jackson', 'Americano', 'Vocal', '1958-08-29', 9), 

('000.111.222-34', 'Don Henley', 'Americano', 'Bateria', '1947-07-22', 10), 

('123.456.789-10', 'Sharon Robinson', 'Americana', 'Vocal', '1953-01-31', 11), 

('987.654.321-09', 'Yoko Ono', 'Japonesa', 'Vocal', '1933-02-18', 12); 

 

insert into funcao (DT_Funcao, Nome_Sinfonia, Nome_Funcao, Musicos_CPF, Sinfonia_IDsinfonia) values 

('2025-05-10', 'Flowers', 'Vocalista Principal', '111.222.333-45', 1), 

('2025-05-10', 'As It Was', 'Vocalista Principal', '222.333.444-56', 2), 

('2025-06-15', 'Blinding Lights', 'Vocalista Principal', '333.444.555-67', 3), 

('2025-06-15', 'Shape of You', 'Guitarrista/Vocalista', '444.555.666-78', 4), 

('2025-07-20', 'Someone Like You', 'Vocalista Principal', '555.666.777-89', 5), 

('2025-07-20', 'Bohemian Rhapsody', 'Guitarrista Principal', '666.777.888-90', 6), 

('2025-08-25', 'Like a Rolling Stone', 'Vocalista/Guitarrista', '777.888.999-01', 7), 

('2025-08-25', 'Smells Like Teen Spirit', 'Baixista', '888.999.000-12', 8), 

('2025-09-30', 'Billie Jean', 'Vocalista Principal', '999.000.111-23', 9), 

('2025-09-30', 'Hotel California', 'Baterista/Vocalista', '000.111.222-34', 10), 

('2025-05-10', 'Hallelujah', 'Vocalista/Compositor', '123.456.789-10', 11), 

('2025-05-10', 'Imagine', 'Vocalista/Compositor', '987.654.321-09', 12);
