-- ==========================================
-- 1. INSERIMENTO SQUADRE (12 Squadre)
-- ==========================================
INSERT INTO squadra (id, nome, anno, citta) VALUES (1, 'Genoa', 1893, 'Genova');
INSERT INTO squadra (id, nome, anno, citta) VALUES (2, 'Udinese', 1896, 'Udine');
INSERT INTO squadra (id, nome, anno, citta) VALUES (3, 'Juventus', 1897, 'Torino');
INSERT INTO squadra (id, nome, anno, citta) VALUES (4, 'Milan', 1899, 'Milano');
INSERT INTO squadra (id, nome, anno, citta) VALUES (5, 'Lazio', 1900, 'Roma');
INSERT INTO squadra (id, nome, anno, citta) VALUES (6, 'Fiorentina', 1926, 'Firenze');
INSERT INTO squadra (id, nome, anno, citta) VALUES (7, 'Torino', 1906, 'Torino');
INSERT INTO squadra (id, nome, anno, citta) VALUES (8, 'Inter', 1908, 'Milano');
INSERT INTO squadra (id, nome, anno, citta) VALUES (9, 'Bologna', 1909, 'Bologna');
INSERT INTO squadra (id, nome, anno, citta) VALUES (10, 'Hellas Verona', 1903, 'Verona');
-- Nuove Squadre
INSERT INTO squadra (id, nome, anno, citta) VALUES (11, 'Roma', 1927, 'Roma');
INSERT INTO squadra (id, nome, anno, citta) VALUES (12, 'Napoli', 1926, 'Napoli');


-- ==========================================
-- 2. INSERIMENTO TORNEI (7 Tornei)
-- ==========================================
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (1, 'Torneo Estivo Roma 2026', 2026, 'Torneo amatoriale a 11 per le squadre della capitale.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (2, 'Coppa delle Province', 2026, 'Competizione ad eliminazione diretta, fase a gironi inclusa.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (3, 'Campionato Invernale', 2025, 'Edizione passata disputata su campi in erba sintetica al coperto.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (4, 'Trofeo Universitario', 2026, 'Torneo riservato agli studenti.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (5, 'Supercoppa Amatoriale', 2026, 'Sfida tra i vincitori dei vari campionati.');
-- Nuovi Tornei
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (6, 'Coppa Italia Dilettanti', 2026, 'Torneo a eliminazione diretta per le nuove squadre iscritte.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (7, 'Campionato Primavera', 2026, 'Torneo di preparazione pre-stagionale.');


-- ==========================================
-- 3. INSERIMENTO ISCRIZIONI
-- ==========================================
-- Torneo 1 (Squadre 1, 2, 3, 4)
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (2, 1, 2, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (3, 1, 3, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (4, 1, 4, 0, 0, 0, 0, 0);

-- Torneo 2 (Squadre 5, 6, 7, 8)
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (5, 2, 5, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (6, 2, 6, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (7, 2, 7, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (8, 2, 8, 0, 0, 0, 0, 0);

-- Torneo 3 (Squadre 9, 10, 1, 2)
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (9, 3, 9, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (10, 3, 10, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (11, 3, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (12, 3, 2, 0, 0, 0, 0, 0);

-- Torneo 4 (Squadre 3, 4, 5, 6)
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (13, 4, 3, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (14, 4, 4, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (15, 4, 5, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (16, 4, 6, 0, 0, 0, 0, 0);

-- Torneo 5 (Squadre 7, 8, 9, 10)
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (17, 5, 7, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (18, 5, 8, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (19, 5, 9, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (20, 5, 10, 0, 0, 0, 0, 0);

-- Nuove Iscrizioni (Torneo 6 e 7)
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (21, 6, 11, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (22, 6, 12, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (23, 6, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (24, 7, 11, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (25, 7, 2, 0, 0, 0, 0, 0);


-- ==========================================
-- 4. INSERIMENTO GIOCATORI (132 Giocatori)
-- ==========================================
-- SQUADRA 1: Genoa
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (1, 'Marco', 'Rossi', '1990-05-12', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (2, 'Luca', 'Bianchi', '1992-08-24', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (3, 'Matteo', 'Romano', '1995-11-03', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (4, 'Giovanni', 'Colombo', '1988-02-15', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (5, 'Andrea', 'Ricci', '1993-07-09', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (6, 'Stefano', 'Marino', '1991-04-20', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (7, 'Davide', 'Greco', '1994-09-11', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (8, 'Paolo', 'Bruno', '1989-12-05', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (9, 'Alessandro', 'Gallo', '1996-01-30', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (10, 'Roberto', 'Conti', '1992-06-18', 1);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (11, 'Francesco', 'De Luca', '1990-10-22', 1);

-- SQUADRA 2: Udinese
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (12, 'Antonio', 'Di Natale', '1977-10-13', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (13, 'Luigi', 'Costa', '1991-03-08', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (14, 'Simone', 'Giordano', '1993-05-25', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (15, 'Federico', 'Rizzo', '1995-09-14', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (16, 'Lorenzo', 'Lombardi', '1990-11-28', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (17, 'Mattia', 'Moretti', '1992-02-17', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (18, 'Emanuele', 'Barbieri', '1994-06-03', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (19, 'Gabriele', 'Fontana', '1989-08-21', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (20, 'Riccardo', 'Santoro', '1996-12-10', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (21, 'Nicola', 'Mariani', '1991-07-06', 2);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (22, 'Giacomo', 'Rinaldi', '1993-04-19', 2);

-- SQUADRA 3: Juventus
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (23, 'Gianluigi', 'Buffon', '1978-01-28', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (24, 'Alessandro', 'Del Piero', '1974-11-09', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (25, 'Claudio', 'Marchisio', '1986-01-19', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (26, 'Giorgio', 'Chiellini', '1984-08-14', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (27, 'Leonardo', 'Bonucci', '1987-05-01', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (28, 'Andrea', 'Barzagli', '1981-05-08', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (29, 'Pavel', 'Nedved', '1972-08-30', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (30, 'David', 'Trezeguet', '1977-10-15', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (31, 'Mauro', 'Camoranesi', '1976-10-04', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (32, 'Ciro', 'Ferrara', '1967-02-11', 3);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (33, 'Gianluca', 'Pessotto', '1970-08-11', 3);

-- SQUADRA 4: Milan
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (34, 'Paolo', 'Maldini', '1968-06-26', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (35, 'Marco', 'van Basten', '1964-10-31', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (36, 'Franco', 'Baresi', '1960-05-08', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (37, 'Filippo', 'Inzaghi', '1973-08-09', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (38, 'Gennaro', 'Gattuso', '1978-01-09', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (39, 'Andrea', 'Pirlo', '1979-05-19', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (40, 'Clarence', 'Seedorf', '1976-04-01', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (41, 'Alessandro', 'Nesta', '1976-03-19', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (42, 'Andriy', 'Shevchenko', '1976-09-29', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (43, 'Dida', 'Nelson', '1973-10-07', 4);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (44, 'Massimo', 'Ambrosini', '1977-05-29', 4);

-- SQUADRA 5: Lazio
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (45, 'Ciro', 'Immobile', '1990-02-20', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (46, 'Giorgio', 'Chinaglia', '1947-01-24', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (47, 'Alessandro', 'Nesta', '1976-03-19', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (48, 'Pavel', 'Nedved', '1972-08-30', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (49, 'Juan', 'Veron', '1975-03-09', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (50, 'Diego', 'Simeone', '1970-04-28', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (51, 'Roberto', 'Mancini', '1964-11-27', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (52, 'Sinisa', 'Mihajlovic', '1969-02-20', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (53, 'Luca', 'Marchegiani', '1966-02-22', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (54, 'Giuseppe', 'Signori', '1968-02-17', 5);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (55, 'Sergej', 'Milinkovic-Savic', '1995-02-27', 5);

-- SQUADRA 6: Fiorentina
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (56, 'Gabriel', 'Batistuta', '1969-02-01', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (57, 'Giancarlo', 'Antognoni', '1954-04-01', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (58, 'Rui', 'Costa', '1972-03-29', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (59, 'Francesco', 'Toldo', '1971-12-02', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (60, 'Luca', 'Toni', '1977-05-26', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (61, 'Adrian', 'Mutu', '1979-01-08', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (62, 'Roberto', 'Baggio', '1967-02-18', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (63, 'Daniel', 'Passarella', '1953-05-25', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (64, 'Kurt', 'Hamrin', '1934-11-19', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (65, 'Giovanni', 'Galli', '1958-04-29', 6);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (66, 'Riccardo', 'Montolivo', '1985-01-18', 6);

-- SQUADRA 7: Torino
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (67, 'Valentino', 'Mazzola', '1919-01-26', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (68, 'Andrea', 'Belotti', '1993-12-20', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (69, 'Paolo', 'Pulici', '1950-04-27', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (70, 'Francesco', 'Graziani', '1952-12-16', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (71, 'Claudio', 'Sala', '1947-09-08', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (72, 'Gigi', 'Meroni', '1943-02-24', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (73, 'Enzo', 'Bearzot', '1927-09-26', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (74, 'Giorgio', 'Ferrini', '1939-08-18', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (75, 'Salvatore', 'Sirigu', '1987-01-12', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (76, 'Matteo', 'Darmian', '1989-12-02', 7);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (77, 'Kamil', 'Glik', '1988-02-03', 7);

-- SQUADRA 8: Inter
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (78, 'Javier', 'Zanetti', '1973-08-10', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (79, 'Ronaldo', 'Luis Nazario', '1976-09-18', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (80, 'Giuseppe', 'Meazza', '1910-08-23', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (81, 'Sandro', 'Mazzola', '1942-11-08', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (82, 'Giacinto', 'Facchetti', '1942-07-18', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (83, 'Walter', 'Zenga', '1960-04-28', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (84, 'Esteban', 'Cambiasso', '1980-08-18', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (85, 'Diego', 'Milito', '1979-06-12', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (86, 'Marco', 'Materazzi', '1973-08-19', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (87, 'Lothar', 'Matthaus', '1961-03-21', 8);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (88, 'Julio', 'Cesar', '1979-09-03', 8);

-- SQUADRA 9: Bologna
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (89, 'Giacomo', 'Bulgarelli', '1940-10-24', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (90, 'Angelo', 'Schiavio', '1905-10-15', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (91, 'Ezio', 'Pascutti', '1937-06-01', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (92, 'Harald', 'Nielsen', '1941-10-26', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (93, 'Gianluca', 'Pagliuca', '1966-12-18', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (94, 'Giuseppe', 'Signori', '1968-02-17', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (95, 'Carlo', 'Nervo', '1971-10-29', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (96, 'Kennet', 'Andersson', '1967-10-06', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (97, 'Renato', 'Dall Ara', '1892-10-10', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (98, 'Marco', 'Di Vaio', '1976-07-15', 9);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (99, 'Riccardo', 'Orsolini', '1997-01-24', 9);

-- SQUADRA 10: Hellas Verona
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (100, 'Preben', 'Elkjaer', '1957-09-11', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (101, 'Hans-Peter', 'Briegel', '1955-10-11', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (102, 'Osvaldo', 'Bagnoli', '1935-02-19', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (103, 'Roberto', 'Tricella', '1959-03-18', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (104, 'Antonio', 'Di Gennaro', '1958-10-05', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (105, 'Claudio', 'Garella', '1955-05-16', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (106, 'Domenico', 'Volpati', '1951-08-19', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (107, 'Giuseppe', 'Galderisi', '1963-03-22', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (108, 'Silvano', 'Fontolan', '1955-02-24', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (109, 'Pietro', 'Fanna', '1958-06-23', 10);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (110, 'Luca', 'Toni', '1977-05-26', 10);

-- SQUADRA 11: Roma (NUOVI)
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (111, 'Francesco', 'Totti', '1976-09-27', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (112, 'Daniele', 'De Rossi', '1983-07-24', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (113, 'Bruno', 'Conti', '1955-03-13', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (114, 'Giuseppe', 'Giannini', '1957-08-20', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (115, 'Roberto', 'Pruzzo', '1964-04-01', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (116, 'Agostino', 'Di Bartolomei', '1955-04-08', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (117, 'Aldair', 'Nascimento', '1965-11-30', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (118, 'Cafu', 'Marcos', '1970-06-07', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (119, 'Vincenzo', 'Montella', '1974-06-18', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (120, 'Simone', 'Perrotta', '1977-09-17', 11);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (121, 'Alisson', 'Becker', '1992-10-02', 11);

-- SQUADRA 12: Napoli (NUOVI)
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (122, 'Diego', 'Maradona', '1960-10-30', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (123, 'Marek', 'Hamsik', '1987-07-27', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (124, 'Dries', 'Mertens', '1987-05-06', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (125, 'Lorenzo', 'Insigne', '1991-06-04', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (126, 'Ciro', 'Ferrara', '1967-02-11', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (127, 'Antonio', 'Careca', '1960-10-05', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (128, 'Kalidou', 'Koulibaly', '1991-06-20', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (129, 'Edinson', 'Cavani', '1987-02-14', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (130, 'Gonzalo', 'Higuain', '1987-12-10', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (131, 'Pepe', 'Reina', '1982-08-31', 12);
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id) VALUES (132, 'Fabio', 'Cannavaro', '1973-09-13', 12);


-- ==========================================
-- 5. INSERIMENTO ARBITRI (5 Arbitri)
-- ==========================================
INSERT INTO arbitro (id, nome, cognome) VALUES (1, 'Pierluigi', 'Collina');
INSERT INTO arbitro (id, nome, cognome) VALUES (2, 'Nicola', 'Rizzoli');
INSERT INTO arbitro (id, nome, cognome) VALUES (3, 'Daniele', 'Orsato');
-- Nuovi Arbitri
INSERT INTO arbitro (id, nome, cognome) VALUES (4, 'Gianluca', 'Rocchi');
INSERT INTO arbitro (id, nome, cognome) VALUES (5, 'Paolo', 'Tagliavento');


-- ==========================================
-- 6. INSERIMENTO PARTITE (11 Partite)
-- ==========================================
-- Torneo 1 (Estivo Roma) - Squadre iscritte: 1, 2, 3, 4
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (1, '2026-06-01', 'Stadio Olimpico', 2, 1, 'TERMINATA', 1, 2, 1, 1);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (2, '2026-06-05', 'Campo Flaminio', 0, 3, 'TERMINATA', 3, 4, 2, 1);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (3, '2026-06-08', 'Stadio dei Marmi', 1, 1, 'TERMINATA', 1, 3, 3, 1);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (4, '2026-06-13', 'Campo Testaccio', 1, 0, 'IN_CORSO', 2, 4, 1, 1);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (5, '2026-06-20', 'Stadio Olimpico', 0, 0, 'PROGRAMMATA', 1, 4, 2, 1);

-- Torneo 2 (Coppa delle Province) - Squadre iscritte: 5, 6, 7, 8
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (6, '2026-07-10', 'Centro Sportivo Vigor', 0, 0, 'PROGRAMMATA', 5, 6, 3, 2);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (7, '2026-07-11', 'Campo Comunale Firenze', 0, 0, 'PROGRAMMATA', 7, 8, 1, 2);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (8, '2026-07-15', 'Stadio Olimpico', 0, 0, 'PROGRAMMATA', 5, 8, 2, 2);

-- Nuove Partite (Tornei 6 e 7)
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (9, '2026-08-01', 'Stadio Olimpico', 2, 2, 'TERMINATA', 11, 1, 4, 6);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (10, '2026-08-05', 'Stadio Diego Armando Maradona', 3, 1, 'TERMINATA', 12, 11, 5, 6);
INSERT INTO partita (id, date, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (11, '2026-09-10', 'Campo Testaccio', 0, 0, 'PROGRAMMATA', 11, 2, 4, 7);


-- ==========================================
-- 7. AGGIORNAMENTO SEQUENZE HIBERNATE
-- ==========================================
-- I nomi esatti delle sequenze possono variare in base alla configurazione di JPA.
-- Solitamente sono nome_tabella_seq
ALTER SEQUENCE squadra_seq RESTART WITH 13;
ALTER SEQUENCE torneo_seq RESTART WITH 8;
ALTER SEQUENCE iscrizioni_seq RESTART WITH 26;
ALTER SEQUENCE giocatore_seq RESTART WITH 133;
ALTER SEQUENCE arbitro_seq RESTART WITH 6;
ALTER SEQUENCE partita_seq RESTART WITH 12;