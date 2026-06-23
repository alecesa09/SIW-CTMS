
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (1, 'Genoa', 1893, 'Genova', '/immagini/genoa.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (2, 'Udinese', 1896, 'Udine', '/immagini/udinese.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (3, 'Juventus', 1897, 'Torino', '/immagini/juventus.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (4, 'Milan', 1899, 'Milano', '/immagini/milan.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (5, 'Lazio', 1900, 'Roma', '/immagini/lazio.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (6, 'Roma', 1927, 'Roma', '/immagini/roma.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (7, 'Napoli', 1926, 'Napoli', '/immagini/napoli.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (8, 'Fiorentina', 1926, 'Firenze', '/immagini/fiorentina.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (9, 'Atalanta', 1907, 'Bergamo', '/immagini/atalanta.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (10, 'Bologna', 1909, 'Bologna', '/immagini/bologna.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (11, 'Torino', 1906, 'Torino', '/immagini/torino.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (12, 'Sampdoria', 1946, 'Genova', '/immagini/sampdoria.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (13, 'Cagliari', 1920, 'Cagliari', '/immagini/cagliari.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (14, 'Verona', 1903, 'Verona', '/immagini/verona.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (15, 'Parma', 1913, 'Parma', '/immagini/parma.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (16, 'Inter', 1908, 'Milano', '/immagini/inter.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (17, 'Monza', 1912, 'Monza', '/immagini/monza.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (18, 'Lecce', 1908, 'Lecce', '/immagini/lecce.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (19, 'Empoli', 1920, 'Empoli', '/immagini/empoli.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (20, 'Frosinone', 1928, 'Frosinone', '/immagini/frosinone.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (21, 'Salernitana', 1919, 'Salerno', '/immagini/salernitana.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (22, 'Sassuolo', 1920, 'Sassuolo', '/immagini/sassuolo.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (23, 'Cremonese', 1903, 'Cremona', '/immagini/cremonese.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (24, 'Venezia', 1907, 'Venezia', '/immagini/venezia.png');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (25, 'Spezia', 1906, 'La Spezia', '/immagini/spezia.png');

INSERT INTO torneo (id, nome, anno, descrizione) VALUES (1, 'Torneo Estivo Roma 2026', 2026, 'Torneo amatoriale a 11 per le squadre della capitale.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (2, 'Coppa Italia Nazionale 2026', 2026, 'Torneo a eliminazione diretta per tutte le 25 squadre iscritte.');

INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (2, 1, 2, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (3, 1, 3, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (4, 1, 4, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (5, 1, 5, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (6, 1, 6, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (7, 1, 7, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (8, 1, 8, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (9, 1, 9, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (10, 1, 10, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (11, 1, 11, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (12, 1, 12, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (13, 1, 13, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (14, 1, 14, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (15, 1, 15, 1, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (16, 2, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (17, 2, 2, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (18, 2, 3, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (19, 2, 4, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (20, 2, 5, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (21, 2, 6, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (22, 2, 7, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (23, 2, 8, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (24, 2, 9, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (25, 2, 10, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (26, 2, 11, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (27, 2, 12, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (28, 2, 13, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (29, 2, 14, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (30, 2, 15, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (31, 2, 16, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (32, 2, 17, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (33, 2, 18, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (34, 2, 19, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (35, 2, 20, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (36, 2, 21, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (37, 2, 22, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (38, 2, 23, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (39, 2, 24, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (40, 2, 25, 0, 0, 0, 0, 0);

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (1, 'Marco', 'Rossi', '1990-05-12', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (2, 'Luca', 'Bianchi', '1992-08-24', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (3, 'Matteo', 'Romano', '1995-11-03', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (4, 'Giovanni', 'Colombo', '1988-02-15', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (5, 'Andrea', 'Ricci', '1993-07-09', 1, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (6, 'Antonio', 'Di Natale', '1977-10-13', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (7, 'Luigi', 'Costa', '1991-03-08', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (8, 'Simone', 'Giordano', '1993-05-25', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (9, 'Federico', 'Rizzo', '1995-09-14', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (10, 'Lorenzo', 'Lombardi', '1990-11-28', 2, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (11, 'Gianluigi', 'Buffon', '1978-01-28', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (12, 'Alessandro', 'Del Piero', '1974-11-09', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (13, 'Claudio', 'Marchisio', '1986-01-19', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (14, 'Giorgio', 'Chiellini', '1984-08-14', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (15, 'Leonardo', 'Bonucci', '1987-05-01', 3, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (16, 'Paolo', 'Maldini', '1968-06-26', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (17, 'Marco', 'van Basten', '1964-10-31', 4, 'Olanda');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (18, 'Franco', 'Baresi', '1960-05-08', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (19, 'Filippo', 'Inzaghi', '1973-08-09', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (20, 'Gennaro', 'Gattuso', '1978-01-09', 4, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (21, 'Ciro', 'Immobile', '1990-02-20', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (22, 'Giorgio', 'Chinaglia', '1947-01-24', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (23, 'Alessandro', 'Nesta', '1976-03-19', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (24, 'Pavel', 'Nedved', '1972-08-30', 5, 'Repubblica Ceca');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (25, 'Juan', 'Veron', '1975-03-09', 5, 'Argentina');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (26, 'Francesco', 'Totti', '1976-09-27', 6, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (27, 'Daniele', 'De Rossi', '1983-07-24', 6, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (28, 'Aldair', 'Nascimento', '1965-11-30', 6, 'Brasile');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (29, 'Diego', 'Maradona', '1960-10-30', 7, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (30, 'Marek', 'Hamsik', '1987-07-27', 7, 'Slovacchia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (31, 'Lorenzo', 'Insigne', '1991-06-04', 7, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (32, 'Gabriel', 'Batistuta', '1969-02-01', 8, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (33, 'Giancarlo', 'Antognoni', '1954-04-01', 8, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (34, 'Rui', 'Costa', '1972-03-29', 8, 'Portogallo');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (35, 'Papu', 'Gomez', '1988-02-15', 9, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (36, 'Josip', 'Ilicic', '1988-01-29', 9, 'Slovenia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (37, 'Duvan', 'Zapata', '1991-04-01', 9, 'Colombia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (38, 'Roberto', 'Baggio', '1967-02-18', 10, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (39, 'Giuseppe', 'Signori', '1968-02-17', 10, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (40, 'Marco', 'Di Vaio', '1976-07-15', 10, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (41, 'Andrea', 'Belotti', '1993-12-20', 11, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (42, 'Valentino', 'Mazzola', '1919-01-26', 11, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (43, 'Francesco', 'Graziani', '1952-12-16', 11, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (44, 'Roberto', 'Mancini', '1964-11-27', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (45, 'Gianluca', 'Vialli', '1964-07-09', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (46, 'Fabio', 'Quagliarella', '1983-01-31', 12, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (47, 'Gigi', 'Riva', '1944-11-07', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (48, 'Gianfranco', 'Zola', '1966-07-05', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (49, 'Daniele', 'Conti', '1979-01-09', 13, 'Italia');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (50, 'Luca', 'Toni', '1977-05-26', 14, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (51, 'Hans-Peter', 'Briegel', '1955-10-11', 14, 'Germania');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (52, 'Preben', 'Elkjaer', '1957-09-11', 14, 'Danimarca');

INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (53, 'Hernan', 'Crespo', '1975-07-05', 15, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (54, 'Lilian', 'Thuram', '1972-01-01', 15, 'Francia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (55, 'Fabio', 'Cannavaro', '1973-09-13', 15, 'Italia');
-- Inter
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (56, 'Javier', 'Zanetti', '1973-08-10', 16, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (57, 'Ronaldo', 'Nazario', '1976-09-18', 16, 'Brasile');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (58, 'Diego', 'Milito', '1979-06-12', 16, 'Argentina');
-- Monza
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (59, 'Matteo', 'Pessina', '1997-04-21', 17, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (60, 'Patrick', 'Ciurria', '1995-02-09', 17, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (61, 'Gianluca', 'Caprari', '1993-07-30', 17, 'Italia');
-- Lecce
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (62, 'Javier', 'Chevanton', '1980-08-12', 18, 'Uruguay');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (63, 'Guillermo', 'Giacomazzi', '1977-11-21', 18, 'Uruguay');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (64, 'Valeri', 'Bojinov', '1986-02-15', 18, 'Bulgaria');
-- Empoli
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (65, 'Massimo', 'Maccarone', '1979-09-06', 19, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (66, 'Francesco', 'Tavano', '1979-03-02', 19, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (67, 'Antonio', 'Di Natale', '1977-10-13', 19, 'Italia');
-- Frosinone
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (68, 'Daniel', 'Ciofani', '1985-07-31', 20, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (69, 'Federico', 'Dionisi', '1987-06-16', 20, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (70, 'Luca', 'Paganini', '1993-06-08', 20, 'Italia');
-- Salernitana
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (71, 'Franck', 'Ribery', '1983-04-07', 21, 'Francia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (72, 'Boulaye', 'Dia', '1996-11-16', 21, 'Senegal');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (73, 'Antonio', 'Candreva', '1987-02-28', 21, 'Italia');
-- Sassuolo
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (74, 'Domenico', 'Berardi', '1994-08-01', 22, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (75, 'Francesco', 'Magnanelli', '1984-11-12', 22, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (76, 'Giacomo', 'Raspadori', '2000-02-18', 22, 'Italia');
-- Cremonese
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (77, 'Gianluca', 'Vialli', '1964-07-09', 23, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (78, 'Attilio', 'Lombardo', '1966-01-06', 23, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (79, 'Cyriel', 'Dessers', '1994-12-08', 23, 'Nigeria');
-- Venezia
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (80, 'Alvaro', 'Recoba', '1976-03-17', 24, 'Uruguay');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (81, 'Filippo', 'Maniero', '1972-09-11', 24, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (82, 'Mattia', 'Aramu', '1995-05-14', 24, 'Italia');
-- Spezia
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (83, 'Mbala', 'Nzola', '1996-08-18', 25, 'Angola');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (84, 'Emmanuel', 'Gyasi', '1994-01-11', 25, 'Ghana');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (85, 'Giulio', 'Maggiore', '1998-03-12', 25, 'Italia');

INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (1, 'Pierluigi', 'Collina', '1960-10-30', 'Italia');
INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (2, 'Nicola', 'Rizzoli', '1987-07-27', 'Italia');
INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (3, 'Daniele', 'Orsato', '1975-11-23', 'Italia');
INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (4, 'Bjorn', 'Kuipers', '1973-03-28', 'Olanda');

-- ==========================================
-- 6. INSERIMENTO PARTITE (8 Partite totali)
-- ==========================================
-- Partite originali
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (1, '2026-06-01', 'Stadio Olimpico', 2, 1, 'TERMINATA', 1, 2, 1, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (2, '2026-06-05', 'Campo Flaminio', 0, 3, 'TERMINATA', 3, 4, 2, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (3, '2026-06-08', 'Stadio dei Marmi', 1, 1, 'TERMINATA', 5, 1, 1, 1);

-- Nuove partite
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (4, '2026-06-10', 'Stadio Olimpico', 3, 1, 'TERMINATA', 6, 7, 1, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (5, '2026-06-12', 'Artemio Franchi', 2, 2, 'TERMINATA', 8, 9, 2, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (6, '2026-06-24', 'Dall Ara', 1, 0, 'TERMINATA', 10, 11, 1, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (7, '2026-06-24', 'Marassi', 0, 1, 'TERMINATA', 12, 13, 2, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (8, '2026-06-24', 'Bentegodi', 2, 3, 'TERMINATA', 14, 15, 1, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (9, '2026-09-01', 'San Siro', 2, 2, 'TERMINATA', 16, 3, 3, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (10, '2026-09-05', 'U-Power Stadium', 1, 0, 'TERMINATA', 17, 18, 4, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (11, '2026-09-10', 'Castellani', 0, 3, 'TERMINATA', 19, 7, 3, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (12, '2026-09-12', 'Stirpe', 1, 1, 'TERMINATA', 20, 21, 4, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (13, '2026-09-15', 'Mapei Stadium', 2, 1, 'TERMINATA', 22, 6, 3, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (14, '2026-09-18', 'Zini', 0, 0, 'PROGRAMMATA', 23, 16, 4, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (15, '2026-06-24', 'Penzo', 0, 0, 'PROGRAMMATA', 24, 25, 3, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (16, '2026-06-24', 'Olimpico', 0, 0, 'PROGRAMMATA', 5, 8, 4, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (17, '2026-06-24', 'Maradona', 0, 0, 'PROGRAMMATA', 7, 4, 3, 2);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (18, '2026-09-30', 'Allianz Stadium', 0, 0, 'PROGRAMMATA', 3, 1, 4, 2);

-- ==========================================
-- 7. UTENTI, CREDENZIALI E COMMENTI
-- ==========================================
INSERT INTO utente (id, nome, cognome, email) VALUES (1, 'alessio', 'cesaroni', 'alessio.cesaroni@fake.it');
INSERT INTO utente (id, nome, cognome, email) VALUES (2, 'mario', 'rossi', 'mario.rossi@fake.it');
INSERT INTO utente (id, nome, cognome, email) VALUES (3, 'giulia', 'bianchi', 'giulia.bianchi@fake.it');
INSERT INTO utente (id, nome, cognome, email) VALUES (4, 'luca', 'verdi', 'luca.verdi@fake.it');

INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (1, 'alessio', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'ADMIN', 1);
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (2, 'mariorossi', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'USER', 2);
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (3, 'giuliab', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'USER', 3);
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (4, 'lucav', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'USER', 4);

INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (1, 'Bella partita, molto combattuta!', 1, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (2, 'Dominio assoluto degli ospiti.', 2, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (3, 'Pareggio giusto alla fine.', 3, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (4, 'Partita incredibile, il Derby d Italia non delude mai!', 9, 2);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (5, 'Ottima prestazione del Monza in casa.', 10, 3);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (6, 'Il Napoli ha dominato la trasferta.', 11, 4);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (7, 'Risultato bugiardo, meritava il Frosinone.', 12, 2);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (8, 'Che vittoria per il Sassuolo contro la Roma!', 13, 3);

-- ==========================================
-- 8. AGGIORNAMENTO SEQUENZE HIBERNATE
-- ==========================================
ALTER SEQUENCE squadra_seq RESTART WITH 26;
ALTER SEQUENCE torneo_seq RESTART WITH 3;
ALTER SEQUENCE iscrizioni_seq RESTART WITH 41;
ALTER SEQUENCE giocatore_seq RESTART WITH 86;
ALTER SEQUENCE arbitro_seq RESTART WITH 5;
ALTER SEQUENCE partita_seq RESTART WITH 19;
ALTER SEQUENCE utente_seq RESTART WITH 5;
ALTER SEQUENCE credentials_seq RESTART WITH 5;
ALTER SEQUENCE commento_seq RESTART WITH 9;