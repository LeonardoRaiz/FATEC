import styles from '../styles/Display.module.css';
export default function Display(props) {
    return (
        <div className={styles.display}>
            <h1>{props.valor}</h1>
        </div>
    )
}