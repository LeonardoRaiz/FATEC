'use client'

import styles from "./page.module.css";
import useGameManager from "@/hooks/gameManager";

export default function Home() {
    const { heroi,
        vilao,
        log,
        turnoHeroi,
        handlerAcaoHeroi } = useGameManager()
  return (
    <div className={styles.page}>
        <span>Heroi: {heroi.nome}</span>
        <span>Vilão: {vilao.nome}</span>
    </div>
  );
}
