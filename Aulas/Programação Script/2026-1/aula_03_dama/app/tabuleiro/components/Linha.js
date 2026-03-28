import Subdivisao from "@/app/tabuleiro/components/Subdivisao";
import styles from "../styles/Linha.module.css";
export default function Linha({ preta }) {
    return (
        <div className={styles.linha}>
            {
                Array.from({length: 8}).map((_, i) => (
                    <Subdivisao
                        key={i}
                        preta={i % 2 === 0 ? preta : !preta}
                    />
                ))
            }
        </div>
    )
}