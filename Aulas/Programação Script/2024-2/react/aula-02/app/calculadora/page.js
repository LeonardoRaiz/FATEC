"use client";

import styles from "../calculadora/css/calculadora.module.css";
import Display from "@/app/calculadora/components/Display";
import Botoes from "@/app/calculadora/components/Botoes";
import { useState } from "react";
import useCalculadora from "@/app/calculadora/components/useCalculadora";

export default function Calculadora() {
    const { displayValue, handleButtonClick } = useCalculadora();

    return (
        <div className={styles.body}>
            <div className={styles.calculadora}>
                <Display valor={displayValue} />
                <div className={styles.linha}>
                    <div className={styles.botoes}>
                        <Botoes numero="AC" onClick={() => handleButtonClick("AC")} />
                        <Botoes numero="+/-" onClick={() => handleButtonClick("+/-")} />
                        <Botoes numero="%" onClick={() => handleButtonClick("%")} />
                        <Botoes numero="/" operador onClick={() => handleButtonClick("/")} />
                    </div>
                </div>
                <div className={styles.linha}>
                    <div className={styles.botoes}>
                        <Botoes numero="7" onClick={() => handleButtonClick("7")} />
                        <Botoes numero="8" onClick={() => handleButtonClick("8")} />
                        <Botoes numero="9" onClick={() => handleButtonClick("9")} />
                        <Botoes numero="x" operador onClick={() => handleButtonClick("x")} />
                    </div>
                </div>
                <div className={styles.linha}>
                    <div className={styles.botoes}>
                        <Botoes numero="4" onClick={() => handleButtonClick("4")} />
                        <Botoes numero="5" onClick={() => handleButtonClick("5")} />
                        <Botoes numero="6" onClick={() => handleButtonClick("6")} />
                        <Botoes numero="-" operador onClick={() => handleButtonClick("-")} />
                    </div>
                </div>
                <div className={styles.linha}>
                    <div className={styles.botoes}>
                        <Botoes numero="1" onClick={() => handleButtonClick("1")} />
                        <Botoes numero="2" onClick={() => handleButtonClick("2")} />
                        <Botoes numero="3" onClick={() => handleButtonClick("3")} />
                        <Botoes numero="+" operador onClick={() => handleButtonClick("+")} />
                    </div>
                </div>
                <div className={styles.linha}>
                    <div className={styles.botoes}>
                        <Botoes numero="." onClick={() => handleButtonClick(".")} />
                        <Botoes numero="0" onClick={() => handleButtonClick("0")} />
                        <Botoes numero=".00" onClick={() => handleButtonClick(".00")} />
                        <Botoes numero="=" operador onClick={() => handleButtonClick("=")} />
                    </div>
                </div>
            </div>
        </div>
    );
}