import { useState, useEffect } from 'react';
import type { PartitaDTO } from '../../types';
import getPartiteOggi from '../../service/partiteService';
import PartitaRow from './Riga';
import styles from './partiteOggiList.module.css';

// Convenzione React: Iniziale maiuscola
function PartiteOggiList() {
  const [partite, setPartite] = useState<PartitaDTO[]>([]);
  const [caricamento, setCaricamento] = useState<boolean>(true);
  const [listaOrdinata, setlistaOrdinata] = useState<[string, PartitaDTO[]][]>([]);

  useEffect(() => {
    const scaricaDati = async () => {
      try {
        const data = await getPartiteOggi();
        setPartite(data);
      } catch (error) {
        console.error("Errore durante il recupero delle partite:", error);
      } finally {
        setCaricamento(false);
      }
    };
    scaricaDati();
  }, []);

  useEffect(() => {
    setlistaOrdinata(ordinaList());
  }, [partite]);

  const RaggruppaPartite = partite.reduce((acc, partita) => {
    const nomeTorneo = partita.nomeTorneo; 
    if (nomeTorneo!=null  && !acc[nomeTorneo]  ) {
      acc[nomeTorneo] = [];
    }
    if(nomeTorneo!=null){
    acc[nomeTorneo].push(partita);
    }
    return acc;
  }, {} as Record<string, PartitaDTO[]>);

  const ordinaTorneo = (entry: [string, PartitaDTO[]]): [string, PartitaDTO[]] => {
      const partiteOrdinate = [...entry[1]].sort((a, b) => 
          a.ora.slice(0, 2).localeCompare(b.ora.slice(0, 2))
      );
      return [entry[0], partiteOrdinate];
  }
  const ordinaList = () =>{
      let partiteRaggruppate = Object.entries(RaggruppaPartite);
      return partiteRaggruppate.map(ordinaTorneo);
  }

  return (
    <div className={styles.listContainer}>
      <h1>Oggi</h1>

      {caricamento ? (
        <p>Caricamento partite...</p>
      ) : (
        <div className={styles.listaTornei}>
          { listaOrdinata.map(([nomeTorneo, partiteDelTorneo]) => (
            
            <div key={nomeTorneo} className={styles.torneo}>
              
              <h2 className={styles.nomeTorneo}>
                  {nomeTorneo}
              </h2>

              {partiteDelTorneo.map((partita) => (
                <PartitaRow 
                  key={partita.id} 
                  {...partita}      
                />
              ))}

            </div>
            
          ))}
        </div>
      )}
    </div>
  );
}

export default PartiteOggiList;