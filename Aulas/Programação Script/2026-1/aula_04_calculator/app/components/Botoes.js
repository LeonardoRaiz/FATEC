import styles from '../styles/Botoes.module.css';
export default function Botoes(props) {
    return (
        <div>
            <button
                onClick={props.onClick}
                className={`${styles.botao} ${props.operator 
                    ? styles.operator : ''}`}
            >
                {props.valor}
            </button>
        </div>
    )
}