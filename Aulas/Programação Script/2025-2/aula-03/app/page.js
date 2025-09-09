"use client"
import {useState} from "react";
import styles from "./page.module.css";

export default function Home() {
    const [x, setX] = useState(0);
    const [y, setY] = useState(0);
    const [valor, setValor] = useState(0);
    const [texto, setTexto] = useState(0);
    const [texto2, setTexto2] = useState(0);

    function handleMouseMove(event) {
        setX(event.clientX);
        setY(event.clientY);
    }

    function handleClick(op) {
        if (op === '+') {
            setValor(valor + 1);
        } else {
            setValor(valor - 1);
        }
    }

    function equal() {
        setValor(parseInt(texto) + parseInt(texto2));
    }

    return (
        <div className={styles.page} onMouseMove={handleMouseMove}>
            <span>Eixo X: {x}</span>
            <span>Eixo Y: {y}</span>
            <span>Número: {valor}</span>
            <button onClick={() => handleClick("+")}> + 1</button>
            <button onClick={() => handleClick("-")}> - 1</button>
            <input onChange={(event) => setTexto(event.target.value)} />
            <span>{texto}</span>
            <input onChange={(event) => setTexto2(event.target.value)} />
            <span>{texto2}</span>
            <button onClick={() => equal()}> =</button>
        </div>
    );
}
