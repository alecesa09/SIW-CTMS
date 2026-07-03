import { useEffect } from "react"
import { getTornei } from "../service/torneiService";
import type{ TorneiDTO } from "../types";
import { useState } from "react"; 
import { Link } from "react-router-dom";
import styles from './Tornei.module.css';
import { Slider } from "@mui/material";
import {Input} from "@mui/material";

function Tornei () {
    const [tornei, setTornei] = useState<TorneiDTO[]>([]);
    const [caricamento, setCaricamento] = useState<boolean>(true);
    const[anno,setAnno]=useState<number[]>([1900,2026]);
    const[nome,setNome]=useState<string>('');
    const [torneiCorrenti,setTorneiCorrenti]= useState<TorneiDTO[]>([]);
    

    useEffect(() => {
        async function scaricaDati() {
        try {
            const data = await getTornei();
            setTornei(data);
        } catch (error) {
            console.error("Errore durante il fetch dei tornei", error);
        } finally {
            setCaricamento(false);
        }
        }
        scaricaDati();
    },[]);

    useEffect(() => {
        const filtered = tornei.filter((torneo) => {
            const annoValido = torneo.anno >= anno[0] && torneo.anno <= anno[1];
            
            const nomeValido = nome === "" || torneo.nome.toLowerCase().includes(nome.toLowerCase());
            
            return annoValido && nomeValido;
        });

        setTorneiCorrenti(filtered);
    }, [anno, nome, tornei]);
        



    return (
        <div className={styles.contenitore}>    
            <div className={styles.filter}>
                <div className={styles.titolo}>
                    <h1>CERCA</h1>
                </div>
                <span>nome:</span>
            <Input 
                    value={nome} 
                    onChange={(event) => setNome(event.target.value)}
                    sx={{ 
                        color: 'white',                // Colore del testo
                        backgroundColor: 'var(--colore-accento-soft)',    // Colore di sfondo
                        padding: '5px 10px',           // Spaziatura interna (sopra/sotto destra/sinistra)
                        borderRadius: '8px',           // Bordi arrotondati
                        fontSize: '1.2rem',            // Grandezza del testo
                        width: '100%'                  // Occupa tutta la larghezza del contenitore
                    }}
                />
                <span>anno:</span>
                <Slider
                    getAriaLabel={() => 'Minimum distance'}
                    value={anno}
                    onChange={(_, newValue) => setAnno(newValue as number[])}
                    valueLabelDisplay="auto"
                    min={1900}
                    max={2026}
                    disableSwap
                    />
            </div>
        {caricamento ? (
            <p>Caricamento tornei...</p>
        ) : (
            <div className={styles.tornei}>
                { torneiCorrenti.map((torneo: TorneiDTO) => (
                    <div key={torneo.id} className={styles.torneo}>
                        <Link to={`/torneo/${torneo.id}`}>
                            <h2>{torneo.nome}</h2>
                        </Link>
                    </div>
                    ))
                }
            </div>
            )
        }
        </div>
    )
}
        

export default Tornei;