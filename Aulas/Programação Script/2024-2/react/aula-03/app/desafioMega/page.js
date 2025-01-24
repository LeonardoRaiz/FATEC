"use client"

import {useEffect, useState} from "react";
import { mega } from "@/app/desafioMega/functions/mega";
import Display from "@/app/desafioMega/components/Display";

export default function desafioMega() {
    const [qtd, setQtd] = useState(6);
    const [numeros, setNumero] = useState([]);

    useEffect(() => {
        setNumero(mega());
    }, [])

    function renderNumeros() {
        return numeros.map((numero) => <Display key={numero} valor={numero} />
        )
    }
    return (
        <div style={{
            display: "flex",
            flexDirection: "column",
            justifyContent: "center",
            alignItems: "center",

        }}>
            <h1>Mega Sena</h1>
            <div style={{
                display: "flex",
                flexWrap: "wrap",
                justifyContent: "center",
            }}>
                {renderNumeros()}
            </div>
            <div>
                <input type="number" min={6} max={20} value={qtd} onChange={e => setQtd(e.target.value)} />
                <button onClick={() => setNumero(mega(qtd))}>Gerar aposta</button>
            </div>
        </div>
    )
}