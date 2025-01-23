import styles from '../styles/Subdivisao.module.css';

export default function Subdivisao(props) {
    return (
        <>
            <div
                style={{
                    backgroundColor: props.preta ? "#000" : "#FFF",
                }}
                className={styles.subdivisao}>
                <div
                    className={`${props.peca ? styles.peca : ""} ${props.jogador2 && props.peca ? styles.peca1 : ""}`}
                ></div>
            </div>
        </>
    )
}