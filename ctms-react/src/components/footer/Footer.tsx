import styles from "./Footer.module.css"
import logoAziendale from '../../assets/admin.png';
import { BACKEND_URL } from "../config";
export default function Footer(){
    return(
        <div className={styles.footerContainer}>
            <a href={`${BACKEND_URL}/admin`}>
                <img src={logoAziendale} alt="Logo Admin" className={styles.adminImmage} />
            </a>
        </div>
    )
}