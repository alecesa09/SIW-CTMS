# siw-CTMS

Progetto SIW per la gestione di tornei amatoriali.

L'intero sistema è live ed è stato sottoposto a deployment strutturando un'architettura distribuita. Il sito è accessibile e testabile al seguente indirizzo: https://siw-ctms.web.app

Nello specifico, i vari livelli dell'applicazione sono stati separati sfruttando piattaforme cloud differenti:
* **Presentation Tier (Frontend):** L'interfaccia in React è ospitata su Firebase Hosting.
* **Logic Tier (Backend):** L'applicazione Spring Boot è deployata come servizio web sulla piattaforma Railway.
* **Data Tier (Database):** I dati sono gestiti tramite un database PostgreSQL ospitato in cloud su Neon.

## Problemi Noti
* **Dimensione del payload:** Durante la creazione o la modifica di una squadra, se vengono aggiunte troppe partecipazioni a un torneo, il sistema restituisce un errore dovuto alle dimensioni eccessive del payload della richiesta.

## Casi d'uso
* Visualizzazione dettagli torneo
* Visualizzazione calendario
* Visualizzazione classifica
* Visualizzazione partita
* Visualizzazione giocatore
* Ricerca globale di squadre, giocatori e tornei
* Creazione, visualizzazione e modifica commento (Utente)
* Inserimento e modifica squadra (Admin)
* Inserimento e modifica giocatori (Admin)

## Analisi sperimentale sulle prestazioni

L'analisi è stata effettuata sul caso d'uso "visualizzazione classifica del torneo": dato un torneo, è necessario caricare la lista delle entità `SquadreIscritte` (per calcolare i punteggi) e, per ciascuna di esse, l'entità `Squadra` collegata (per poterne stampare il nome).

Il test è stato eseguito su un database remoto per evidenziare maggiormente l'impatto della latenza di rete sulle singole query, interrogando un torneo popolato con N = 24 squadre iscritte.

In tutti gli scenari viene eseguita inizialmente una query con `JOIN` per caricare il torneo insieme alle relative squadre iscritte. Da qui, le strategie differiscono:
* **LAZY / EAGER:** viene eseguita una query separata per caricare l'entità `Squadra` collegata a ciascuna riga di `SquadraIscritta`.
* **JOIN FETCH:** viene utilizzata un'unica query con doppia clausola `LEFT JOIN FETCH`, che unisce preventivamente `Torneo`, `SquadraIscritta` e `Squadra` in un solo round-trip.

### Risultati

| Strategia      |   Tempo  | Query totali |
| **LAZY**       | 0.9375 s |      25      |
| **EAGER**      | 0.8877 s |      25      |
| **JOIN FETCH** | 0.0443 s |       1      |

Il numero di query cresce linearmente con il numero di squadre iscritte sia per la strategia **LAZY** che per quella **EAGER**: entrambe generano 25 query totali (1 iniziale + 24 per le singole squadre).

La strategia con **JOIN FETCH**, invece, riduce il numero di query a 1 sola, indipendentemente dal numero di squadre iscritte. A tal fine, è stato implementato un metodo nel Repository contenente una query JPQL custom con doppia clausola `LEFT JOIN FETCH`, che unisce preventivamente tutte e tre le tabelle. I log di Hibernate confermano che il sistema estrae l'intero albero dei dati con un'unica interrogazione SQL, portando il tempo di esecuzione da 0.9375s a 0.0443s.

Questo esperimento dimostra concretamente come la scelta della strategia di fetch sia determinante per le prestazioni dell'applicazione.