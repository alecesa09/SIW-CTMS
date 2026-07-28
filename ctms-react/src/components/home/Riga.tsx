import styles from './riga.module.css';
import type { PartitaDTO } from '../../types';
import { BACKEND_URL } from '../config';

const PartitaRow = ({ 
  id, stato,ora,
  nomeSquadraCasa, logoSquadraCasa,
  nomeSquadraTrasferta, logoSquadraTrasferta, 
  golCasa, golTrasferta 
}: PartitaDTO) => {
  return (
    <a href={`${BACKEND_URL}/partita/${id}`} className={styles.riga}>
      <div className={styles.squadraCasa}>
      <img src={`${BACKEND_URL}` + logoSquadraCasa} alt="Logo Casa" className={styles.logo}/>
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
      <img src={ `${BACKEND_URL}`+ logoSquadraTrasferta} alt="Logo Trasferta" className={styles.logo}/>
      </div>

    </a>
  );
};

export default PartitaRow;