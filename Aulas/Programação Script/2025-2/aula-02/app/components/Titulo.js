import styles from "./Titulo.module.css"

export default function Titulo(props){
    return (
        <>
            <h1 className={styles.texto}>{props.titulo}</h1>
            <h2 className={styles.subtitulo}>{props.subtitulo}</h2>
            <h3 style={{color: props.cor}}>{props.subsubtitulo}</h3>
        </>
    )
}