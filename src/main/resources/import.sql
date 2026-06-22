-- ==========================================
-- 1. INSERIMENTO SQUADRE (5 Squadre)
-- ==========================================
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (1, 'Genoa', 1893, 'Genova', 'https://www.stickersmurali.com/img-webp.php?p=products/listado/merchant/asfs1757.jpg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (2, 'Udinese', 1896, 'Udine', 'https://it.wikipedia.org/wiki/Special:FilePath/Udinese_Calcio_logo.svg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (3, 'Juventus', 1897, 'Torino', 'https://it.wikipedia.org/wiki/Special:FilePath/Juventus_FC_-_logo_black_(Italy,_2020).svg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (4, 'Milan', 1899, 'Milano', 'https://it.wikipedia.org/wiki/Special:FilePath/Logo_of_AC_Milan.svg');
INSERT INTO squadra (id, nome, anno, citta, logo) VALUES (5, 'Lazio', 1900, 'Roma', 'https://it.wikipedia.org/wiki/Special:FilePath/S.S._Lazio_logo.svg');

-- ==========================================
-- 2. INSERIMENTO TORNEI (1 Torneo)
-- ==========================================
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (1, 'Torneo Estivo Roma 2026', 2026, 'Torneo amatoriale a 11 per le squadre della capitale.');

-- ==========================================
-- 3. INSERIMENTO ISCRIZIONI (5 Iscrizioni)
-- ==========================================
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (2, 1, 2, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (3, 1, 3, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (4, 1, 4, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (5, 1, 5, 0, 0, 0, 0, 0);

-- ==========================================
-- 4. INSERIMENTO GIOCATORI (25 Giocatori)
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

-- ==========================================
-- 5. INSERIMENTO ARBITRI (2 Arbitri)
-- ==========================================
INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (1, 'Pierluigi', 'Collina', '1960-10-30', 'Italia');
INSERT INTO arbitro (id, nome, cognome, nascita, nazionalita) VALUES (2, 'Nicola', 'Rizzoli', '1987-07-27', 'Italia');

-- ==========================================
-- 6. INSERIMENTO PARTITE (3 Partite)
-- ==========================================
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (1, '2026-06-01', 'Stadio Olimpico', 2, 1, 'TERMINATA', 1, 2, 1, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (2, '2026-06-05', 'Campo Flaminio', 0, 3, 'TERMINATA', 3, 4, 2, 1);
INSERT INTO partita (id, data, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (3, '2026-06-08', 'Stadio dei Marmi', 1, 1, 'TERMINATA', 5, 1, 1, 1);

-- ==========================================
-- 7. UTENTI, CREDENZIALI E COMMENTI (1 Utente, 3 Commenti)
-- ==========================================
INSERT INTO utente (id, nome, cognome, email) VALUES (1, 'alessio', 'cesaroni', 'alessio.cesaroni@fake.it');
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (1, 'alessio', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'ADMIN', 1);

INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (1, 'Bella partita, molto combattuta!', 1, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (2, 'Dominio assoluto degli ospiti.', 2, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (3, 'Pareggio giusto alla fine.', 3, 1);

-- ==========================================
-- 8. AGGIORNAMENTO SEQUENZE HIBERNATE
-- ==========================================
ALTER SEQUENCE squadra_seq RESTART WITH 6;
ALTER SEQUENCE torneo_seq RESTART WITH 2;
ALTER SEQUENCE iscrizioni_seq RESTART WITH 6;
ALTER SEQUENCE giocatore_seq RESTART WITH 26;
ALTER SEQUENCE arbitro_seq RESTART WITH 3;
ALTER SEQUENCE partita_seq RESTART WITH 4;
ALTER SEQUENCE utente_seq RESTART WITH 2;
ALTER SEQUENCE credentials_seq RESTART WITH 2;
ALTER SEQUENCE commento_seq RESTART WITH 4;