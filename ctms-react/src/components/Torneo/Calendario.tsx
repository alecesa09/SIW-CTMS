import { useEffect, useState } from "react";
import type { PartitaDTO } from "../../types";
import { getCalendario } from "../../service/torneiService";
import { useParams } from "react-router-dom";
import styles from "./Calendario.module.css"
import { BACKEND_URL } from "../config";

const Calendario = () => {
    const [partite, setPartite] = useState<PartitaDTO[]>([]);
    const { id } = useParams<{ id: string }>();
    const [partiteOrdinate, setPartiteOrdinate] = useState<PartitaDTO[]>([]);

    useEffect(() => {
        const scaricaDati = async () => {
            try {
                if (id != null) {
                    const data = await getCalendario(id);
                    setPartite(data);
                }
            } catch (error) {
                console.error("Errore durante il recupero del calendario");
            }
        };
        scaricaDati();
    }, [id]);

    useEffect(() => {
        
        const ordinate = [...partite].sort((a, b) => {
            const dataA = a.data || "";
            const dataB = b.data || "";
            const oraA = a.ora || "";
            const oraB = b.ora || "";
            if (dataA === dataB) {
                return oraA.localeCompare(oraB);
            } else {
                return dataA.localeCompare(dataB);
            }
        });
        setPartiteOrdinate(ordinate);
    }, [partite]);
    return (
        <div className={styles.calendario}>
            <h2>Calendario</h2>
            {partiteOrdinate.map((partita: PartitaDTO) => (
                <a 
                    key={partita.id} 
                    href={`${BACKEND_URL}/partita/${partita.id}`} 
                    className={styles.partita}
                > 
                    <span className={styles.stat}>{partita.data}</span>
                    <span className={styles.stat}>{partita.ora.slice(0,5)}</span>

                    <img src={`${BACKEND_URL}${partita.logoSquadraCasa}`} className={styles.logo} alt={`Logo ${partita.nomeSquadraCasa}`} />
                    <span className={styles.stat}>{partita.nomeSquadraCasa}</span>

                     <div className={styles.risultato}>
                        {partita.stato === "TERMINATA" && <span>{partita.golCasa} - {partita.golTrasferta}</span>}
                        {partita.stato === "PROGRAMMATA" && <span className={styles.programmata}>-</span> }
                        {partita.stato === "ANNULLATA" && <span className={styles.annullata}>ANNULLATA</span>}
                        {partita.stato === "IN_SOSPESO" && <span className={styles.sospesa}>IN SOSPESO</span>}
                        {partita.stato === "IN_CORSO" && <span className={styles.inCorso}>{partita.golCasa} - {partita.golTrasferta}</span>}
                    </div>

                    <img src={`${BACKEND_URL}${partita.logoSquadraTrasferta}`} className={styles.logo} alt={`Logo ${partita.nomeSquadraTrasferta}`} />
                    <span className={styles.stat}>{partita.nomeSquadraTrasferta}</span>
                </a>
            ))}
        </div>
    );
};

export default Calendario;
