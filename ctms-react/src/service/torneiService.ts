import type { TorneiDTO } from "../types";
import api from "./api";
import type { ClassificaDTO } from "../types";
import type { PartitaDTO } from "../types";
export async function getTornei(): Promise<TorneiDTO[]> {
    const { data } = await api.get<TorneiDTO[]>('tornei');
    return data;
}

export async function getTorneo(id:string): Promise<TorneiDTO> {
    const { data } = await api.get<TorneiDTO>(`torneo/${id}`);
    return data;
}

export async function getClassifica(id:string): Promise<ClassificaDTO[]> {
    const { data } = await api.get<ClassificaDTO[]>(`torneo/classifica/${id}`);
    return data;
}

export async function getCalendario(id:string): Promise<PartitaDTO[]> {
    const { data } = await api.get<PartitaDTO[]>(`torneo/calendario/${id}`);
    return data;
}
