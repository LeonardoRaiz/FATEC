import styles from "../styles/Linha.module.css"
import Subdivisao from "@/app/components/Subdivisao";

export default function Linha(props) {
    return (
        <div className={styles.linha}>
            {Array.from({length: 8}, (_, i) => i).map(i =>
                <Subdivisao
                    key={i}
                    cor={i % 2 === 0 ? props.cor : !props.cor}
                    peca={props.peca && (i % 2 === 0 ? props.cor : !props.cor)}
                    jogador2={props.jogador2}
                ></Subdivisao>)}
        </div>
    )
}