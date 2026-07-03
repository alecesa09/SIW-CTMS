import type { PartitaDTO } from "../types";
import api from "./api";

async function getPartiteOggi(): Promise<PartitaDTO[]> {
    const { data } = await api.get<PartitaDTO[]>('partiteOggi');
    return data;
}

export default getPartiteOggi;