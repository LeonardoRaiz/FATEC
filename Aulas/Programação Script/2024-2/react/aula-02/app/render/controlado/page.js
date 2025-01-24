"use client"

import {useState} from "react";

export default function ComponenteControlado() {
    const [valor , setValor] = useState('');
    return (
        <div style={{
            display: 'flex',
            flexDirection: 'column',
        }}>
            <span>{valor}</span>
            <input type={"text"} value={valor} onChange={e => setValor(e.target.value)} />
        </div>
    )
}