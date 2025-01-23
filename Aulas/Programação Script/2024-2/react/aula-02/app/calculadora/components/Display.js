import styles from '../css/display.module.css';

export default function Display(props) {
    return (
        <div className={styles.container}>
            <h1>{ props.valor } </h1>
        </div>
    )
}