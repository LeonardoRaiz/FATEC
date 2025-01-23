"use client"

import Pai from "@/app/comunicacao/components/Pai";

function acao1(evento) {
    console.log("Ação chamada", evento.value);
}

export default function comunicacao() {
    return (
        <>
            <div>
                <h1>Comunicação Direta</h1>
                <Pai familia="Raiz2"/>
            </div>
            <div>
                <h1>Comunicação via Evento</h1>
                <button
                    style={{
                        width: "100px",
                        height: "50px",
                    }}
                    onClick={acao1}
                >Click
                </button>
                <div>
                    <input type="text" onChange={e => console.log(e.target.value)}/>
                </div>
            </div>

        </>
    )
}