import styles from '../css/botoes.module.css';

export default function Botoes(props) {
    return (
        <div>
            <button
                onClick={props.onClick}
                className={`${styles.botao} ${props.operador ? styles.operador : ''}`}>
                {props.numero}
            </button>
        </div>
    )
}