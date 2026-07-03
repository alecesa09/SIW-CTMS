import type { HomeSearchDTO } from "../types";
import api from "./api";

async function getHomeSearch(str: string): Promise<HomeSearchDTO[]> {
  const { data } = await api.get<HomeSearchDTO[]>(`search/${str}`) 
  return data;
}

export default getHomeSearch;