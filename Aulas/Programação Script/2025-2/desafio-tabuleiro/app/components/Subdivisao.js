import styles from "../styles/Subdivisao.module.css"

export default function Subdivisao(props) {
    return (
        <div className={`${styles.subdivisao} ${props.cor ? styles.preta : styles.branca}`}>
            {props.peca
                &&
                <div className={props.jogador2 ? styles.peca1 : styles.peca}></div>}
        </div>
    )
}