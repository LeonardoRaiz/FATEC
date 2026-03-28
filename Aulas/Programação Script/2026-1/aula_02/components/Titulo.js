import styles from './Titulo.module.css'
export default function Titulo(props) {
    return (
        <>
            <h1 className={styles[props.cor]}>{props.texto}</h1>
            <h2>{props.subtitulo}</h2>
            <h3>{props.cor}</h3>
        </>
    )
}
