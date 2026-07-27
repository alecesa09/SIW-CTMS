import { useEffect, useState } from "react"
import { getTornei } from "../service/torneiService";
import type { TorneiDTO } from "../types";
import { Link } from "react-router-dom";
import styles from './Tornei.module.css';
import { Slider } from "@mui/material";
import { Input } from "@mui/material";

const ELEMENTI_PER_PAGINA = 5;

function Tornei() {
    const [tornei, setTornei] = useState<TorneiDTO[]>([]);
    const [caricamento, setCaricamento] = useState<boolean>(true);
    const [anno, setAnno] = useState<number[]>([2000, 2026]);
    const [nome, setNome] = useState<string>('');
    const [torneiCorrenti, setTorneiCorrenti] = useState<TorneiDTO[]>([]);
    const [paginaTornei, setPaginaTornei] = useState(1);

    useEffect(() => {
        async function scaricaDati() {
            try {
                const data = await getTornei();
                setTornei(data);
            } catch (error: any) {
            
            } finally {
                setCaricamento(false);
            }
        }
        scaricaDati();
    }, []);

    useEffect(() => {
        const filtered = tornei.filter((torneo) => {
            const annoValido = torneo.anno >= anno[0] && torneo.anno <= anno[1];
            const nomeValido = nome === "" || torneo.nome.toLowerCase().includes(nome.toLowerCase());
            return annoValido && nomeValido;
        });

        setTorneiCorrenti(filtered);
        setPaginaTornei(1); // ogni volta che cambia il filtro, si riparte dalla prima pagina
    }, [anno, nome, tornei]);

    const numeroPagineTornei = Math.ceil(
        torneiCorrenti.length / ELEMENTI_PER_PAGINA
    );

    const torneiPagina = torneiCorrenti.slice(
        (paginaTornei - 1) * ELEMENTI_PER_PAGINA,
        paginaTornei * ELEMENTI_PER_PAGINA
    );

    return (
        <div className={styles.contenitore}>
            <div className={styles.titolo}>
                <h1>Tornei</h1>
            </div>

            <div className={styles.filter}>
                <div className={styles.titolo}>
                    <h1>CERCA</h1>
                </div>
                <span>nome:</span>
                <Input
                    value={nome}
                    onChange={(event) => setNome(event.target.value)}
                    placeholder="Cerca per nome..."
                    sx={{
                        color: 'white',
                        backgroundColor: 'var(--colore-accento-soft)',
                        padding: '5px 10px',
                        borderRadius: '8px',
                        fontSize: '1.2rem',
                        width: '100%'
                    }}
                />
                <span>anno: {anno[0]} - {anno[1]}</span>
                <Slider
                    getAriaLabel={() => 'Minimum distance'}
                    value={anno}
                    onChange={(_, newValue) => setAnno(newValue as number[])}
                    valueLabelDisplay="auto"
                    min={2000}
                    max={2026}
                    disableSwap
                />
                {!caricamento && (
                    <p className={styles.risultatiCount}>
                        {torneiCorrenti.length} {torneiCorrenti.length === 1 ? "torneo trovato" : "tornei trovati"}
                    </p>
                )}
            </div>

            {caricamento ? (
                <p className={styles.statoVuoto}>Caricamento tornei...</p>
            ) : torneiCorrenti.length === 0 ? (
                <p className={styles.statoVuoto}>
                    Nessun torneo corrisponde ai filtri selezionati.
                </p>
            ) : (
                <>
                    <div className={styles.tornei}>
                        {torneiPagina.map((torneo: TorneiDTO) => (
                                <Link to={`/torneo/${torneo.id}`} key={torneo.id} className={styles.torneo}>
                                    <div className={styles.torneoHeader}>
                                        <h2>{torneo.nome}</h2>
                                    </div>
                                    <span className={styles.annoBadge}>{torneo.anno}</span>
                                </Link>
                        ))}
                    </div>

                    {numeroPagineTornei > 1 && (
                        <div
                            className={styles.pagination}
                            aria-label="Paginazione tornei"
                        >
                            <button
                                type="button"
                                className={styles.paginationButton}
                                onClick={() =>
                                    setPaginaTornei((pagina) => Math.max(pagina - 1, 1))
                                }
                                disabled={paginaTornei === 1}
                            >
                                Precedente
                            </button>

                            <span className={styles.paginationInfo}>
                                Pagina {paginaTornei} di {numeroPagineTornei}
                            </span>

                            <button
                                type="button"
                                className={styles.paginationButton}
                                onClick={() =>
                                    setPaginaTornei((pagina) =>
                                        Math.min(pagina + 1, numeroPagineTornei)
                                    )
                                }
                                disabled={paginaTornei === numeroPagineTornei}
                            >
                                Successiva
                            </button>
                        </div>
                    )}
                </>
            )}
        </div>
    )
}

export default Tornei;
