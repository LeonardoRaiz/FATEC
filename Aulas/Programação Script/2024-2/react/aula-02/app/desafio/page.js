"use client"

import {useState} from "react";
import Display from "@/app/desafio/components/Display";

export default function desafioPage() {
    //React hooks
    const [valor, setValor] = useState(0);


    const estilo = {
        width: '50px',
        height: '50px',
    }
    return (
        <div style={{
            padding: '2%',
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            flexDirection: 'column'
        }}>
            <h1>Contador</h1>
            <Display valor={valor} />
            <div>
                <button
                    style={estilo}
                    onClick={() => setValor(valor - 1)}>-
                </button>
                <button
                    style={estilo}
                    onClick={() => setValor(valor + 1)}>+
                </button>
            </div>
        </div>
    )
}