import styles from "./Numero.module.css"

export default function Numero(props) {
    const isEven = props.numero % 2 === 0;

    const itemClass = isEven ? styles.par : styles.impar

    return (
        <div className={itemClass}>
            {props.numero}
        </div>
    )
}