import styles from './Nav.module.css';
import Search from './SearchBar';
import { Outlet, Link } from 'react-router-dom';

const Nav = () => {
  return (
    <div className={styles.contenitore}>
      
      <nav className={styles.nav}>
        <div className={styles.navsharedleft}>
          <h1 className={styles.titolo}>
            <Link to="/" className={styles.linkSenzaStile}>CTMS</Link>
          </h1>
        </div>
        <div className={styles.navsharedcenter}>
          <Search />
        </div>
        <div className={styles.menudestra}>
          <span>
            <Link to="/tornei" className={styles.linkSenzaStile}>Tornei</Link>
          </span>
        </div>
      </nav>

      <div className={styles.figlio}>
        <Outlet /> 
      </div>
    </div>
  );
};

export default Nav;