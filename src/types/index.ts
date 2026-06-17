export interface giocatore {
  id: number;
  nome: string;
  cognome: string;
  nascita: number;   // "YYYY-MM-DD"
  nazionalita: string;
  squadra? : squadra;
}

export interface squadra {
  id: number;
  nome: string;
  anno: number;
  citta: string;
  giocatori[]?: giocatore;
}