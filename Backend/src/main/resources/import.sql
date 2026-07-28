-- SQUADRE
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (1, 'ASD Genova Amatori', '1968-06-26', 'Genova', '/immagini/genova.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (2, 'Polisportiva Udine Vecchia', '1978-01-09', 'Udine', '/immagini/udinese.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (3, 'Oratorio San Giovanni Torino', '1993-12-20', 'Torino', '/immagini/juventus.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (4, 'ASD Milano Nord', '1968-06-26', 'Milano', '/immagini/milan.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (5, 'Lazio Amatori Roma', '1993-12-20', 'Roma', '/immagini/lazio.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (6, 'ASD Roma Est', '1978-01-09', 'Roma', '/immagini/roma.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (7, 'Napoli Calcio Amatori', '1968-06-26', 'Napoli', '/immagini/napoli.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (8, 'Polisportiva Firenze Sud', '1993-12-20', 'Firenze', '/immagini/fiorentina.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (9, 'Bergamo Amatori FC', '1993-12-20', 'Bergamo', '/immagini/atalanta.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (10, 'Bologna Oratorio San Petronio', '1993-12-20', 'Bologna', '/immagini/bologna.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (11, 'Torino Sud Amatori', '1968-06-26', 'Torino', '/immagini/torino.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (12, 'Samp Genova Amatori', '1978-01-09', 'Genova', '/immagini/sampdoria.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (13, 'Cagliari Isola Amatori', '1978-01-09', 'Cagliari', '/immagini/cagliari.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (14, 'Verona Scaligera Amatori', '1993-12-20', 'Verona', '/immagini/verona.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (15, 'Parma Ducale Amatori', '1968-06-26', 'Parma', '/immagini/parma.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (16, 'Milano Centro Amatori', '1993-12-20', 'Milano', '/immagini/inter.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (17, 'Monza Brianza Amatori', '1993-12-20', 'Monza', '/immagini/monza.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (18, 'Lecce Salento Amatori', '1968-06-26', 'Lecce', '/immagini/lecce.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (19, 'Empoli Valdelsa Amatori', '1993-12-20', 'Empoli', '/immagini/empoli.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (20, 'Frosinone Ciociaria Amatori', '1978-01-09', 'Frosinone', '/immagini/frosinone.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (21, 'Salerno Amatori', '1993-12-20', 'Salerno', '/immagini/salernitana.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (22, 'Sassuolo Ceramiche Amatori', '1968-06-26', 'Sassuolo', '/immagini/sassuolo.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (23, 'Cremona Padana Amatori', '1993-12-20', 'Cremona', '/immagini/cremonese.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (24, 'Venezia Laguna Amatori', '1968-06-26', 'Venezia', '/immagini/venezia.png');
INSERT INTO squadra (id, nome, fondazione, citta, logo) VALUES (25, 'Spezia Golfo Amatori', '1978-01-09', 'La Spezia', '/immagini/spezia.png');

-- TORNEI
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (1, 'Torneo Estivo Roma', 2025, 'Torneo amatoriale a 11 per le squadre della capitale.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (2, 'Coppa Italia Nazionale', 2026, 'Torneo a eliminazione diretta per tutte le 25 squadre iscritte.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (3, 'Campionato Invernale', 2025, 'Torneo invernale per mantenere la condizione fisica.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (4, 'Trofeo delle Regioni', 2026, 'Competizione breve con fase a gironi interregionale.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (5, 'Lega Amatori Calcio', 2024, 'Campionato di lunga durata per tutto il 2027.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (6, 'Coppa Primavera', 2023, 'Torneo primaverile in preparazione alla stagione estiva.');
INSERT INTO torneo (id, nome, anno, descrizione) VALUES (7, 'Supercoppa Dilettanti', 2022, 'Edizione speciale riservata alle squadre più blasonate.');

-- SQUADRE ISCRITTE TORNEO 1
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (1, 1, 1, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (2, 1, 2, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (3, 1, 3, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (4, 1, 4, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (5, 1, 5, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (6, 1, 6, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (7, 1, 7, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (8, 1, 8, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (9, 1, 9, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (10, 1, 10, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (11, 1, 11, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (12, 1, 12, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (13, 1, 13, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (14, 1, 14, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (15, 1, 15, 0, 0, 0, 0, 0);

-- SQUADRE ISCRITTE TORNEO 2
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (16, 2, 1, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (17, 2, 2, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (18, 2, 3, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (19, 2, 4, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (20, 2, 5, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (21, 2, 6, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (22, 2, 7, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (23, 2, 8, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (24, 2, 9, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (25, 2, 10, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (26, 2, 11, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (27, 2, 12, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (28, 2, 13, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (29, 2, 14, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (30, 2, 15, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (31, 2, 16, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (32, 2, 17, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (33, 2, 18, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (34, 2, 19, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (35, 2, 20, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (36, 2, 21, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (37, 2, 22, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (38, 2, 23, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (39, 2, 24, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (40, 2, 25, 0, 0, 0, 0, 0);

-- SQUADRE ISCRITTE TORNEO 3
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (41, 3, 1, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (42, 3, 2, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (43, 3, 3, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (44, 3, 4, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (45, 3, 5, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (46, 3, 6, 1, 0, 0, 1, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (47, 3, 7, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (48, 3, 8, 1, 0, 1, 0, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (49, 3, 9, 1, 1, 0, 0, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (50, 3, 10, 1, 0, 0, 1, 0);

-- SQUADRE ISCRITTE TORNEO 4
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (51, 4, 11, 2, 1, 1, 0, 4);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (52, 4, 12, 2, 0, 0, 2, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (53, 4, 13, 2, 0, 2, 0, 2);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (54, 4, 14, 2, 1, 1, 0, 4);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (55, 4, 15, 2, 1, 0, 1, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (56, 4, 16, 2, 2, 0, 0, 6);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (57, 4, 17, 2, 0, 1, 1, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (58, 4, 18, 2, 0, 1, 1, 1);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (59, 4, 19, 2, 1, 0, 1, 3);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (60, 4, 20, 2, 1, 0, 1, 3);

-- SQUADRE ISCRITTE TORNEO 5
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (61, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (62, 5, 6, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (63, 5, 7, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (64, 5, 8, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (65, 5, 9, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (66, 5, 10, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (67, 5, 11, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (68, 5, 12, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (69, 5, 13, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (70, 5, 14, 0, 0, 0, 0, 0);

-- SQUADRE ISCRITTE TORNEO 6
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (71, 6, 16, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (72, 6, 17, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (73, 6, 18, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (74, 6, 19, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (75, 6, 20, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (76, 6, 21, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (77, 6, 22, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (78, 6, 23, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (79, 6, 24, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (80, 6, 25, 0, 0, 0, 0, 0);

-- SQUADRE ISCRITTE TORNEO 7
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (81, 7, 2, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (82, 7, 4, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (83, 7, 6, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (84, 7, 8, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (85, 7, 10, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (86, 7, 12, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (87, 7, 14, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (88, 7, 16, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (89, 7, 18, 0, 0, 0, 0, 0);
INSERT INTO Squadra_Iscritta (id, torneo_id, squadra_id, giocate, vittorie, pareggi, sconfitte, punti) VALUES (90, 7, 20, 0, 0, 0, 0, 0);

-- UTENTI
INSERT INTO utente (id, nome, cognome, email) VALUES (1, 'alessio', 'cesaroni', 'alessio.cesaroni@fake.it');
INSERT INTO utente (id, nome, cognome, email) VALUES (2, 'mario', 'rossi', 'mario.rossi@fake.it');
INSERT INTO utente (id, nome, cognome, email) VALUES (3, 'giulia', 'bianchi', 'giulia.bianchi@fake.it');
INSERT INTO utente (id, nome, cognome, email) VALUES (4, 'luca', 'verdi', 'luca.verdi@fake.it');

-- CREDENZIALI
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (1, 'cesa', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'ADMIN', 1);
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (2, 'mariorossi', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'USER', 2);
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (3, 'giuliab', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'USER', 3);
INSERT INTO credentials (id, username, psw, ruolo, utente_id) VALUES (4, 'lucav', '$2a$12$/MlAeF6XHN.QL/.FVlWx2OmwJMc.nqOHoZ6cHr5SMhAfPeHaQjq82', 'USER', 4);

-- ARBITRI
INSERT INTO arbitro (id, nome, cognome, codice_arbitrale, nascita, nazionalita) VALUES (1, 'Pierluigi', 'Collina', 1, '1960-10-30', 'Italia');
INSERT INTO arbitro (id, nome, cognome, codice_arbitrale, nascita, nazionalita) VALUES (2, 'Nicola', 'Rizzoli', 3, '1987-07-27', 'Italia');
INSERT INTO arbitro (id, nome, cognome, codice_arbitrale, nascita, nazionalita) VALUES (3, 'Daniele', 'Orsato', 2, '1975-11-23', 'Italia');
INSERT INTO arbitro (id, nome, cognome, codice_arbitrale, nascita, nazionalita) VALUES (4, 'Bjorn', 'Kuipers', 4, '1973-03-28', 'Olanda');

-- GIOCATORI
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (1, 'Marco', 'Rossi', '1990-05-12', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (2, 'Luca', 'Bianchi', '1992-08-24', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (3, 'Matteo', 'Romano', '1995-11-03', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (4, 'Giovanni', 'Colombo', '1988-02-15', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (5, 'Andrea', 'Ricci', '1993-07-09', 1, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (6, 'Davide', 'Ferraro', '1985-03-14', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (7, 'Luigi', 'Costa', '1991-03-08', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (8, 'Simone', 'Giordano', '1993-05-25', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (9, 'Federico', 'Rizzo', '1995-09-14', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (10, 'Lorenzo', 'Lombardi', '1990-11-28', 2, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (11, 'Paolo', 'Martini', '1982-04-17', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (12, 'Alessio', 'Galli', '1987-09-22', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (13, 'Claudio', 'Ferrari', '1989-01-11', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (14, 'Giorgio', 'Moretti', '1984-06-03', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (15, 'Leonardo', 'Barbieri', '1991-12-08', 3, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (16, 'Stefano', 'Marchetti', '1980-11-19', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (17, 'Riccardo', 'Villa', '1986-02-27', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (18, 'Franco', 'Sartori', '1979-07-14', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (19, 'Filippo', 'Greco', '1988-05-30', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (20, 'Gennaro', 'Esposito', '1983-10-05', 4, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (21, 'Ciro', 'De Luca', '1990-02-20', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (22, 'Giorgio', 'Parisi', '1985-08-12', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (23, 'Alessandro', 'Vitale', '1988-03-19', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (24, 'Michele', 'Caruso', '1992-11-07', 5, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (25, 'Juan', 'Lopez', '1989-04-25', 5, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (26, 'Francesco', 'Marini', '1986-09-27', 6, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (27, 'Daniele', 'Pellegrini', '1990-07-24', 6, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (28, 'Carlos', 'Silva', '1984-11-30', 6, 'Brasile');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (29, 'Diego', 'Ramirez', '1987-10-30', 7, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (30, 'Marek', 'Novak', '1991-07-27', 7, 'Slovacchia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (31, 'Lorenzo', 'Russo', '1993-06-04', 7, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (32, 'Gabriel', 'Suarez', '1985-02-01', 8, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (33, 'Giancarlo', 'Bernardi', '1982-04-01', 8, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (34, 'Rui', 'Almeida', '1988-03-29', 8, 'Portogallo');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (35, 'Alejandro', 'Gomez', '1990-02-15', 9, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (36, 'Josip', 'Horvat', '1989-01-29', 9, 'Slovenia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (37, 'Duvan', 'Lopez', '1992-04-01', 9, 'Colombia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (38, 'Roberto', 'Fabbri', '1983-02-18', 10, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (39, 'Giuseppe', 'Monti', '1986-02-17', 10, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (40, 'Marco', 'Bellini', '1991-07-15', 10, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (41, 'Andrea', 'Ferri', '1993-12-20', 11, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (42, 'Valentino', 'Rinaldi', '1980-01-26', 11, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (43, 'Francesco', 'Leone', '1984-12-16', 11, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (44, 'Roberto', 'Galli', '1987-11-27', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (45, 'Gianluca', 'Serra', '1985-07-09', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (46, 'Fabio', 'Conti', '1989-01-31', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (47, 'Luigi', 'Piras', '1981-11-07', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (48, 'Gianfranco', 'Melis', '1986-07-05', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (49, 'Daniele', 'Carta', '1990-01-09', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (50, 'Luca', 'Fontana', '1988-05-26', 14, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (51, 'Hans', 'Muller', '1983-10-11', 14, 'Germania');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (52, 'Preben', 'Jensen', '1985-09-11', 14, 'Danimarca');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (53, 'Hernan', 'Diaz', '1987-07-05', 15, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (54, 'Lilian', 'Dubois', '1984-01-01', 15, 'Francia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (55, 'Fabio', 'Marino', '1986-09-13', 15, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (56, 'Javier', 'Ruiz', '1985-08-10', 16, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (57, 'Carlos', 'Oliveira', '1988-09-18', 16, 'Brasile');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (58, 'Diego', 'Perez', '1990-06-12', 16, 'Argentina');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (59, 'Matteo', 'Riva', '1997-04-21', 17, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (60, 'Patrick', 'Longhi', '1995-02-09', 17, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (61, 'Gianluca', 'Basile', '1993-07-30', 17, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (62, 'Javier', 'Pereira', '1988-08-12', 18, 'Uruguay');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (63, 'Guillermo', 'Santos', '1985-11-21', 18, 'Uruguay');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (64, 'Valeri', 'Ivanov', '1990-02-15', 18, 'Bulgaria');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (65, 'Massimo', 'Neri', '1987-09-06', 19, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (66, 'Francesco', 'Pucci', '1989-03-02', 19, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (67, 'Antonio', 'Gallo', '1984-10-13', 19, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (68, 'Daniel', 'Mariani', '1988-07-31', 20, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (69, 'Federico', 'Santi', '1991-06-16', 20, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (70, 'Luca', 'Orlandi', '1994-06-08', 20, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (71, 'Franck', 'Martin', '1986-04-07', 21, 'Francia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (72, 'Boulaye', 'Diop', '1996-11-16', 21, 'Senegal');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (73, 'Antonio', 'De Santis', '1989-02-28', 21, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (74, 'Domenico', 'Rinaldi', '1994-08-01', 22, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (75, 'Francesco', 'Magnani', '1987-11-12', 22, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (76, 'Giacomo', 'Berti', '2000-02-18', 22, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (77, 'Gianluca', 'Torelli', '1985-07-03', 23, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (78, 'Attilio', 'Bruni', '1988-01-06', 23, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (79, 'Cyriel', 'Okeke', '1994-12-08', 23, 'Nigeria');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (80, 'Alvaro', 'Fernandez', '1987-03-17', 24, 'Uruguay');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (81, 'Filippo', 'Zanetti', '1984-09-11', 24, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (82, 'Mattia', 'Costa', '1995-05-14', 24, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (83, 'Mbala', 'Ngoma', '1996-08-18', 25, 'Angola');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (84, 'Emmanuel', 'Mensah', '1994-01-11', 25, 'Ghana');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (85, 'Giulio', 'Ferrari', '1998-03-12', 25, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (86, 'Simone', 'Barbato', '1992-06-18', 12, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (87, 'Alessio', 'Piras', '1994-09-03', 13, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (88, 'Marco', 'Tosi', '1991-11-22', 14, 'Italia');
INSERT INTO giocatore (id, nome, cognome, nascita, squadra_id, nazionalita) VALUES (89, 'Davide', 'Lombardo', '1993-04-15', 15, 'Italia');

-- PARTITE (ID CONTINUI DA 1 A 42, ESCAPE CORRETTO DEGLI APICI)
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (1, '2026-06-01', '20:45:00', 'Stadio Olimpico', 2, 1, 'TERMINATA', 1, 2, 1, 1);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (2, '2026-06-05', '20:45:00', 'Campo Flaminio', 0, 3, 'TERMINATA', 3, 4, 2, 1);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (3, '2026-07-16', '20:45:00', 'Stadio dei Marmi', 1, 1, 'IN_CORSO', 5, 1, 1, 1);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (4, '2026-06-10', '20:45:00', 'Stadio Olimpico', 3, 1, 'TERMINATA', 6, 7, 1, 1);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (5, '2026-07-16', '20:45:00', 'Franchi', 2, 2, 'TERMINATA', 8, 9, 2, 1);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (6, '2026-06-29', '15:00:00', 'Stadio Dall''Ara', 1, 0, 'TERMINATA', 10, 11, 1, 1);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (7, '2026-07-01', '15:00:00', 'Marassi', 1, 2, 'TERMINATA', 12, 13, 2, 1);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (8, '2026-07-26', '15:00:00', 'Bentegodi', 2, 1, 'TERMINATA', 7, 6, 1, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (9, '2026-07-28', '20:45:00', 'San Siro', 1, 0, 'TERMINATA', 17, 18, 3, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (10, '2026-07-29', '20:45:00', 'U-Power', 2, 0, 'TERMINATA', 22, 19, 4, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (11, '2026-07-28', '20:45:00', 'Castellani', 1, 1, 'TERMINATA', 20, 21, 3, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (12, '2026-07-29', '15:00:00', 'Stirpe', 0, 0, 'IN_CORSO', 1, 2, 4, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (13, '2026-07-29', '20:45:00', 'Mapei', 0, 0, 'PROGRAMMATA', 3, 4, 3, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (14, '2026-07-29', '18:00:00', 'Olimpico', 0, 0, 'PROGRAMMATA', 5, 8, 2, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (15, '2026-07-29', '18:00:00', 'Penzo', 0, 0, 'PROGRAMMATA', 9, 10, 3, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (16, '2026-07-26', '18:00:00', 'Olimpico', 0, 0, 'PROGRAMMATA', 11, 12, 4, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (17, '2026-07-30', '20:45:00', 'Maradona', 0, 0, 'PROGRAMMATA', 13, 14, 3, 2);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (18, '2026-08-01', '18:00:00', 'Campo Testaccio', 0, 0, 'PROGRAMMATA', 1, 2, 1, 3);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (19, '2026-08-02', '15:00:00', 'Centro Sportivo Vismara', 0, 0, 'PROGRAMMATA', 3, 4, 2, 3);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (20, '2026-08-03', '20:45:00', 'Stadio dei Marmi', 0, 0, 'PROGRAMMATA', 5, 6, 3, 3);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (21, '2026-08-10', '16:00:00', 'Stadio Filadelfia', 0, 0, 'PROGRAMMATA', 11, 12, 4, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (22, '2026-08-11', '18:30:00', 'Sardegna Arena', 0, 0, 'PROGRAMMATA', 13, 14, 1, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (23, '2026-08-12', '20:45:00', 'Stadio Tardini', 0, 0, 'PROGRAMMATA', 15, 16, 2, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (24, '2026-08-20', '15:00:00', 'Stadio Maradona', 0, 0, 'PROGRAMMATA', 7, 8, 3, 5);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (25, '2026-08-21', '18:00:00', 'Stadio Dall''Ara', 0, 0, 'PROGRAMMATA', 9, 10, 4, 5);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (26, '2026-08-22', '21:00:00', 'Stadio Olimpico Grande Torino', 0, 0, 'PROGRAMMATA', 11, 12, 1, 5);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (27, '2026-09-01', '14:30:00', 'Stadio U-Power', 0, 0, 'PROGRAMMATA', 17, 18, 2, 6);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (28, '2026-09-02', '16:30:00', 'Stadio Castellani', 0, 0, 'PROGRAMMATA', 19, 20, 3, 6);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (29, '2026-09-03', '20:45:00', 'Stadio Arechi', 0, 0, 'PROGRAMMATA', 21, 22, 4, 6);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (30, '2026-09-10', '18:00:00', 'Stadio Friuli', 0, 0, 'PROGRAMMATA', 2, 4, 1, 7);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (31, '2026-09-11', '20:45:00', 'Stadio Olimpico', 0, 0, 'PROGRAMMATA', 6, 8, 2, 7);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (32, '2026-09-12', '15:00:00', 'Stadio Dall''Ara', 0, 0, 'PROGRAMMATA', 10, 12, 3, 7);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (33, '2026-06-15', '15:00:00', 'Stadio Filadelfia', 2, 1, 'TERMINATA', 11, 12, 1, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (34, '2026-06-16', '18:00:00', 'Sardegna Arena', 0, 0, 'TERMINATA', 13, 14, 2, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (35, '2026-06-17', '20:45:00', 'Stadio Tardini', 1, 3, 'TERMINATA', 15, 16, 3, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (36, '2026-06-18', '15:00:00', 'U-Power Stadium', 2, 2, 'TERMINATA', 17, 18, 4, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (37, '2026-06-19', '18:30:00', 'Stadio Castellani', 1, 0, 'TERMINATA', 19, 20, 1, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (38, '2026-06-25', '20:45:00', 'Stadio Filadelfia', 1, 1, 'TERMINATA', 11, 13, 2, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (39, '2026-06-26', '15:00:00', 'Stadio Marassi', 0, 2, 'TERMINATA', 12, 15, 3, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (40, '2026-06-27', '18:00:00', 'Stadio Bentegodi', 3, 1, 'TERMINATA', 14, 17, 4, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (41, '2026-06-28', '20:45:00', 'San Siro', 2, 0, 'TERMINATA', 16, 19, 1, 4);
INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (42, '2026-06-29', '15:00:00', 'Via del Mare', 0, 1, 'TERMINATA', 18, 20, 2, 4);

-- COMMENTI
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (1, 'Bella partita, molto combattuta!', 1, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (2, 'Dominio assoluto degli ospiti.', 2, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (3, 'Pareggio giusto alla fine.', 3, 1);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (4, 'Partita incredibile, il Derby d''Italia non delude mai!', 9, 2);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (5, 'Ottima prestazione del Monza in casa.', 10, 3);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (6, 'Il Napoli ha dominato la trasferta.', 11, 4);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (7, 'Risultato bugiardo, meritava il Frosinone.', 12, 2);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (8, 'Che vittoria per il Sassuolo contro la Roma!', 13, 3);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (9, 'Partita amatoriale ma combattutissima, bravi tutti!', 1, 2);
INSERT INTO commento (id, testo, partita_id, utente_id) VALUES (10, 'Bel gol del numero 9, davvero da professionista!', 6, 3);

-- RESET SEQUENCE
ALTER SEQUENCE squadra_seq RESTART WITH 200;
ALTER SEQUENCE torneo_seq RESTART WITH 200;
ALTER SEQUENCE squadra_iscritta_seq RESTART WITH 200;
ALTER SEQUENCE giocatore_seq RESTART WITH 200;
ALTER SEQUENCE arbitro_seq RESTART WITH 200;
ALTER SEQUENCE partita_seq RESTART WITH 200;
ALTER SEQUENCE utente_seq RESTART WITH 200;
ALTER SEQUENCE credentials_seq RESTART WITH 200;
ALTER SEQUENCE commento_seq RESTART WITH 200;