export interface PartitaDTO{
  id: number,
  stato: string,
  data ?:string,
  ora:string,
  torneoId ?: number,
  nomeTorneo ?: string,
  nomeSquadraCasa:  string,
  logoSquadraCasa: string,
  nomeSquadraTrasferta: string,
  logoSquadraTrasferta: string,
  golCasa: number,
  golTrasferta: number
}

export interface HomeSearchDTO{
  id: number;
  nome: string;
  cognome: string;
  logo: string;
  tipo: 'GIOCATORE' | 'SQUADRA' | 'TORNEO';
}

export interface TorneiDTO{
  id: number;
  nome: string;
  anno: number;
  descrizione ?: String;
}

export interface ClassificaDTO {
    id: number;
    nome: string;
    logo: string;
    punti: number;
    giocate: number;
    vittorie: number;
    pareggi: number;
    sconfitte: number;
}