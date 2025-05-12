'use client'
import {useState, useEffect} from "react";
import Display from "@/app/mega/components/Display";
import {mega} from "@/app/mega/components/megaSena";

export default function page()
{
    const [qtd, setQtd] = useState(6);
    const [numeros, setNumeros] = useState([]);

    useEffect(() => {
        setNumeros(mega())
    }, [])

    function renderNumeros(){
        return numeros.map((numero) => <Display key={numero} valor={numero} />)
    }
    return (
        <>
            <h1>Mega Sena</h1>
            <div style={{display: 'flex', flexDirection: 'wrap'}}>
                {renderNumeros()}
            </div>
            <input type="number" min={6} max={20} value={qtd} onChange={event => setQtd(event.target.value)} />
            <button style={{
                backgroundColor: '#1b41ab',
                height: '50px',
                width: '150px',
                marginLeft: '300px',
                borderRadius: '10px',
                border: 'none'
            }}
                    onClick={() => setNumeros(mega(qtd))}
            >Gerar Mega</button>
        </>
    )
}