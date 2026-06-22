-- ==========================================
-- 1. INSERIMENTO SQUADRE (15 Squadre totali)
-- ==========================================
-- Squadre originali
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (1, 'Genoa', 1893, 'Genova', 'https://www.stickersmurali.com/img-webp.php?p=products/listado/merchant/asfs1757.jpg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (2, 'Udinese', 1896, 'Udine', 'https://it.wikipedia.org/wiki/Special:FilePath/Udinese_Calcio_logo.svg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (3, 'Juventus', 1897, 'Torino', 'https://it.wikipedia.org/wiki/Special:FilePath/Juventus_FC_-_logo_black_(Italy,_2020).svg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (4, 'Milan', 1899, 'Milano', 'https://it.wikipedia.org/wiki/Special:FilePath/Logo_of_AC_Milan.svg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (5, 'Lazio', 1900, 'Roma', 'https://it.wikipedia.org/wiki/Special:FilePath/S.S._Lazio_logo.svg');

-- Nuove squadre aggiunte (con logo locale)
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


-- ==========================================
-- 2. INSERIMENTO TORNEI (1 Torneo)
-- ==========================================
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (1, 'Torneo Estivo Roma 2026', 2026, 'Torneo amatoriale a 11 per le squadre della capitale.');


-- ==========================================
-- 3. INSERIMENTO ISCRIZIONI (15 Iscrizioni al Torneo 1)
-- ==========================================
-- Iscrizioni originali
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (2, 1, 2, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (3, 1, 3, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (4, 1, 4, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (5, 1, 5, 0, 0, 0, 0, 0);

-- Nuove iscrizioni
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


-- ==========================================
-- 4. INSERIMENTO GIOCATORI (55 Giocatori totali)
-- ==========================================
-- SQUADRA 1: Genoa
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (1, 'Marco', 'Rossi', '1990-05-12', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (2, 'Luca', 'Bianchi', '1992-08-24', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (3, 'Matteo', 'Romano', '1995-11-03', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (4, 'Giovanni', 'Colombo', '1988-02-15', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (5, 'Andrea', 'Ricci', '1993-07-09', 1, 'Italia');

-- SQUADRA 2: Udinese
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (6, 'Antonio', 'Di Natale', '1977-10-13', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (7, 'Luigi', 'Costa', '1991-03-08', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (8, 'Simone', 'Giordano', '1993-05-25', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (9, 'Federico', 'Rizzo', '1995-09-14', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (10, 'Lorenzo', 'Lombardi', '1990-11-28', 2, 'Italia');

-- SQUADRA 3: Juventus
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (11, 'Gianluigi', 'Buffon', '1978-01-28', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (12, 'Alessandro', 'Del Piero', '1974-11-09', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (13, 'Claudio', 'Marchisio', '1986-01-19', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (14, 'Giorgio', 'Chiellini', '1984-08-14', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (15, 'Leonardo', 'Bonucci', '1987-05-01', 3, 'Italia');

-- SQUADRA 4: Milan
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (16, 'Paolo', 'Maldini', '1968-06-26', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (17, 'Marco', 'van Basten', '1964-10-31', 4, 'Olanda');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (18, 'Franco', 'Baresi', '1960-05-08', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (19, 'Filippo', 'Inzaghi', '1973-08-09', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (20, 'Gennaro', 'Gattuso', '1978-01-09', 4, 'Italia');

-- SQUADRA 5: Lazio
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (21, 'Ciro', 'Immobile', '1990-02-20', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (22, 'Giorgio', 'Chinaglia', '1947-01-24', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (23, 'Alessandro', 'Nesta', '1976-03-19', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (24, 'Pavel', 'Nedved', '1972-08-30', 5, 'Repubblica Ceca');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (25, 'Juan', 'Veron', '1975-03-09', 5, 'Argentina');

-- SQUADRA 6: Roma
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (26, 'Francesco', 'Totti', '1976-09-27', 6, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (27, 'Daniele', 'De Rossi', '1983-07-24', 6, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (28, 'Aldair', 'Nascimento', '1965-11-30', 6, 'Brasile');

-- SQUADRA 7: Napoli
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (29, 'Diego', 'Maradona', '1960-10-30', 7, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (30, 'Marek', 'Hamsik', '1987-07-27', 7, 'Slovacchia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (31, 'Lorenzo', 'Insigne', '1991-06-04', 7, 'Italia');

-- SQUADRA 8: Fiorentina
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (32, 'Gabriel', 'Batistuta', '1969-02-01', 8, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (33, 'Giancarlo', 'Antognoni', '1954-04-01', 8, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (34, 'Rui', 'Costa', '1972-03-29', 8, 'Portogallo');

-- SQUADRA 9: Atalanta
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (35, 'Papu', 'Gomez', '1988-02-15', 9, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (36, 'Josip', 'Ilicic', '1988-01-29', 9, 'Slovenia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (37, 'Duvan', 'Zapata', '1991-04-01', 9, 'Colombia');

-- SQUADRA 10: Bologna
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (38, 'Roberto', 'Baggio', '1967-02-18', 10, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (39, 'Giuseppe', 'Signori', '1968-02-17', 10, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (40, 'Marco', 'Di Vaio', '1976-07-15', 10, 'Italia');

-- SQUADRA 11: Torino
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (41, 'Andrea', 'Belotti', '1993-12-20', 11, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (42, 'Valentino', 'Mazzola', '1919-01-26', 11, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (43, 'Francesco', 'Graziani', '1952-12-16', 11, 'Italia');

-- SQUADRA 12: Sampdoria
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (44, 'Roberto', 'Mancini', '1964-11-27', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (45, 'Gianluca', 'Vialli', '1964-07-09', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (46, 'Fabio', 'Quagliarella', '1983-01-31', 12, 'Italia');

-- SQUADRA 13: Cagliari
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (47, 'Gigi', 'Riva', '1944-11-07', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (48, 'Gianfranco', 'Zola', '1966-07-05', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (49, 'Daniele', 'Conti', '1979-01-09', 13, 'Italia');

-- SQUADRA 14: Verona
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (50, 'Luca', 'Toni', '1977-05-26', 14, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (51, 'Hans-Peter', 'Briegel', '1955-10-11', 14, 'Germania');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (52, 'Preben', 'Elkjaer', '1957-09-11', 14, 'Danimarca');

-- SQUADRA 15: Parma
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (53, 'Hernan', 'Crespo', '1975-07-05', 15, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (54, 'Lilian', 'Thuram', '1972-01-01', 15, 'Francia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (55, 'Fabio', 'Cannavaro', '1973-09-13', 15, 'Italia');


-- ==========================================
-- 5. INSERIMENTO ARBITRI (2 Arbitri)
-- ==========================================
INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (1, 'Pierluigi', 'Collina', '1960-10-30', 'Italia');
INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (2, 'Nicola', 'Rizzoli', '1987-07-27', 'Italia');


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
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (6, '2026-06-15', 'Dall Ara', 1, 0, 'TERMINATA', 10, 11, 1, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (7, '2026-06-18', 'Marassi', 0, 1, 'TERMINATA', 12, 13, 2, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (8, '2026-06-20', 'Bentegodi', 2, 3, 'TERMINATA', 14, 15, 1, 1);


-- ==========================================
-- 7. UTENTI, CREDENZIALI E COMMENTI
-- ==========================================
INSERT INTO utente (id, nome, cognome, email) VALUES (1, 'alessio', 'cesaroni', 'alessio.cesaroni@fake.it');
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (1, 'alessio', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'ADMIN', 1);

INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (1, 'Bella partita, molto combattuta!', 1, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (2, 'Dominio assoluto degli ospiti.', 2, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (3, 'Pareggio giusto alla fine.', 3, 1);


-- ==========================================
-- 8. AGGIORNAMENTO SEQUENZE HIBERNATE
-- ==========================================
ALTER SEQUENCE squadra_seq RESTART WITH 16;
ALTER SEQUENCE torneo_seq RESTART WITH 2;
ALTER SEQUENCE iscrizioni_seq RESTART WITH 16;
ALTER SEQUENCE giocatore_seq RESTART WITH 56;
ALTER SEQUENCE arbitro_seq RESTART WITH 3;
ALTER SEQUENCE partita_seq RESTART WITH 9;
ALTER SEQUENCE utente_seq RESTART WITH 2;
ALTER SEQUENCE credentials_seq RESTART WITH 2;
ALTER SEQUENCE commento_seq RESTART WITH 4;