"use client"
import {useState} from "react";

export default function Estado() {
    const [x, setX] = useState(0)
    const [y, setY] = useState(0)

    function quandoMover(e) {
        setX(e.clientX)
        setY(e.clientY)
    }

    return (
        <>
            <div style={{
                display: 'flex',
                flexDirection: 'column',
                justifyContent: 'center',
                alignItems: 'center',
                backgroundColor: "#222",
                color: "#fff",
                height: "100vh",
            }} onMouseMove={quandoMover}>
                <span>Eixo X: {x}</span>
                <span>Eixo Y: {y}</span>
            </div>
        </>
    )
}