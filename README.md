siw-CTMS
Progetto SIW di gestione tornei amatoriali.


è stato effettuato il deploy del sito con le seguenti modalita:
- react su hosting firebase
- backend su  railways
- db su neon

il sito è visitabile al link:https://siw-ctms.web.app/

errore: se aggiungo troppe partecipazioni a unn torneo per una squara ricevo un errore per il payload troppo grande

casi d`uso:
visualizzare dettagli torneo
visualizzare calendario
visualizzare classifica
visualizzare partita
visualizzare giocatore
creare visualizzare modificare commento (utenti)
inserimento e modifica Squadra
inserimento e modifica giocatori
inserimento e modifica partite
ricerca globale di squadre giocatori e tornei



Analisi Sperimentale sulle Prestazioni

L'analisi è stata effettuata sul caso d'uso "visualizzazione classifica del torneo": dato un Torneo, è necessario caricare la lista delle SquadreIscritte (per i punteggi) 
e, per ciascuna di esse, l'entità Squadra collegata (per stamparne il nome).

Il test è stato eseguito su un database remoto per evidenziare maggiormente l'impatto della latenza di rete sulle singole query, interrogando un torneo popolato con N = 24 squadre iscritte.

In entrambi gli scenari viene eseguita inizialmente una query con JOIN per caricare il torneo insieme alle relative SquadreIscritte. Da qui, le strategie differiscono:

- LAZY / EAGER: una query separata per caricare l'entità Squadra collegata a ciascuna riga di SquadraIscritta.
- JOIN FETCH: un'unica query con doppia clausola `LEFT JOIN FETCH`, che unisce preventivamente Torneo, SquadraIscritta e Squadra in un solo round-trip.

#Risultati

| Strategia  |   Tempo   | Query totali |
| LAZY       |  0.9375 s |      25      |
| EAGER      |  0.8877 s |      25      |
| JOIN FETCH |  0.0443 s |       1      |

Il numero di query cresce linearmente con il numero di squadre iscritte sia per la strategia LAZY che per quella EAGER: entrambe generano 25 query.

La strategia con JOIN FETCH, invece, riduce il numero di query a 1 sola indipendentemente dal numero di squadre iscritte: ho scritto un metodo nel Repository con una custom query JPQL a doppia clausola `LEFT JOIN FETCH`, 
che unisce preventivamente tutte e tre le tabelle. I log di Hibernate confermano che il sistema estrae l'intero albero dei dati con un'unica interrogazione SQL, portando il tempo di esecuzione da 0.9375s a 0.0443s.

Questo esperimento dimostra concretamente come la scelta della strategia di fetch sia determinante per le prestazioni dell'applicazione.