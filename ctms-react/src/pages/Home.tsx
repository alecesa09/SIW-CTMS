import styles from'./Home.module.css';
import PartiteOggiList from '../components/home/PartiteOggiList';


function Home() {
  return (
    <div className={styles.contenitoreHome}>
      <PartiteOggiList />
    </div>
  );
}

export default Home;