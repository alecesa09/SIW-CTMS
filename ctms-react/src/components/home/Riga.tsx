import React from 'react';
import styles from './riga.module.css';
import type { PartitaDTO } from '../../types';

const PartitaRow = ({ 
  id, stato,ora,
  nomeSquadraCasa, logoSquadraCasa,
  nomeSquadraTrasferta, logoSquadraTrasferta, 
  golCasa, golTrasferta 
}: PartitaDTO) => {
  return (
    <a href={`http://localhost:8080/partita/${id}`} className={styles.riga}>
      <div className={styles.squadraCasa}>
      <img src={"http://localhost:8080" + logoSquadraCasa} alt="Logo Casa" className={styles.logo}/>
      <span>{nomeSquadraCasa}</span>
      </div>

      <div >
      {stato === "TERMINATA" && <span>{golCasa} - {golTrasferta}</span>}
      {stato === "PROGRAMMATA" && <span>{ora.slice(0,5)}</span>}
      {stato === "ANNULLATA" && <span className={styles.annullata}>ANNULLATA</span>}
      {stato === "IN_SOSPESO" && <span className={styles.sospesa}>IN SOSPESO</span>}
      {stato === "IN_CORSO" && <span className={styles.inCorso}>{golCasa} - {golTrasferta}</span>}
      </div>


      <div className={styles.squadraTrasferta}>
      <span>{nomeSquadraTrasferta}</span>
      <img src={"http://localhost:8080" + logoSquadraTrasferta} alt="Logo Trasferta" className={styles.logo}/>
      </div>

    </a>
  );
};

export default PartitaRow;