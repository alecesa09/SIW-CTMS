
import { useEffect, useState } from "react"
import type { ClassificaDTO } from "../../types"
import { getClassifica } from "../../service/torneiService";
import { useParams } from "react-router-dom";
import { BACKEND_URL } from "../config";
import styles from './Classifica.module.css';

const Classifica= () => {
    const [squadre,setSquadre] = useState<ClassificaDTO[]>([]);
    const { id } = useParams<{ id: string }>();
  useEffect(() => {
    const scaricaDati = async () => {
      try {
        if (id!= null){
        const data = await getClassifica(id);
        setSquadre(data);
        }
      } catch (error) {
        console.error("Errore durante il recupero della classifica");
      }
    };
    scaricaDati();
  }, [id]);
  return(
        <div className={styles.classifica}>
            <h2>Classifica</h2>
            <div className={`${styles.squadra} ${styles.header}`}>
                <span className={styles.posizione}>#</span>
                <span></span>
                <span>Squadra</span>
                <span className={styles.stat}>Pt</span>
                <span className={styles.stat}>G</span>
                <span className={styles.stat}>V</span>
                <span className={styles.stat}>P</span>
                <span className={styles.stat}>S</span>
            </div>

            {/* 2. Aggiungi "index: number" ai parametri del map */}
            {squadre.map((squadra: ClassificaDTO, index: number) => (
                <div key={squadra.id} className={styles.squadra}>
                    
                    {/* Stampiamo l'indice + 1 (perché index parte da 0) */}
                    <span className={styles.posizione}>{index + 1}</span>
                    
                    <img src={`${BACKEND_URL}${squadra.logo}`} className={styles.logo} alt={squadra.nome} />
                    
                    <a href={`${BACKEND_URL}/squadra/${squadra.id}`} className={styles.nomeLink}>
                        {squadra.nome}
                    </a>
                    <span className={styles.stat}>{squadra.punti}</span>
                    <span className={styles.stat}>{squadra.giocate}</span>
                    <span className={styles.stat}>{squadra.vittorie}</span>
                    <span className={styles.stat}>{squadra.pareggi}</span>
                    <span className={styles.stat}>{squadra.sconfitte}</span>
                </div>
            ))}
        </div>
    )
}
export default Classifica;