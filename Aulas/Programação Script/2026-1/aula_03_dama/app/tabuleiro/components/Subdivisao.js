import styles from '../styles/Subdivisao.module.css'
export default function Subdivisao({ preta }) {
    console.log(preta)
    return (
        <div className={`${styles.subdivisao}
           ${preta ? styles.preta : styles.branca}
        `}>
            <div className={styles.peca}></div>
        </div>
    )
}