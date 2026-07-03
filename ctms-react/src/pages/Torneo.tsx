import { useEffect } from "react";
import { useParams } from "react-router-dom";
import { getTorneo } from "../service/torneiService";
import { useState } from "react";
import type { TorneiDTO } from "../types";
import styles from "./Torneo.module.css";
import Classifica from "../components/Torneo/Classifica";
import Calendario from "../components/Torneo/Calendario";
import { Button } from "@mui/material";

function Torneo() {
  const { id } = useParams<{ id: string }>();
  const[torneo,setTorneo]=useState<TorneiDTO>();
  const[vista,setVistaAttiva]=useState("classifica");
  const [error, setError] = useState(false);

  useEffect(() => {
    const scaricaDati = async () => {
      try {
        if (id!= null){
        const data = await getTorneo(id);
        setTorneo(data);
        setError(false);
        }
      } catch (error) {
        setError(true);
        console.error("Errore durante il recupero del torneo");
      }
    };
    scaricaDati();
  }, [id]);

  if (id == null) {
    return <span>Non trovato</span>;
  }
  if(error===true){
    return <span>Il torneo non esiste.</span>;
  }
  if (!torneo) {
    return <span>Caricamento in corso...</span>;
  }
  return (
    <div className={styles.torneo}>
      <div className={styles.info} >
        <h2>{torneo.nome}</h2>
        <p>anno:{torneo.anno}</p>
        <p>descrione:{torneo.descrizione}</p>
        <div className={styles.bottoni}>
          <Button sx={{ color: 'var(--colore-testo-secondario)' }} onClick={() => setVistaAttiva("classifica")}>
            Classifica
          </Button>
        <Button sx={{ color: 'var(--colore-testo-secondario)' }} onClick={() => setVistaAttiva("calendario")}>
          Calendario
        </Button>
        </div>
      </div>
      <div className={styles.contenuto}>
        {vista === "classifica" && <Classifica />}
        {vista === "calendario" && <Calendario />}
      </div>
    </div>
  );
}

export default Torneo;