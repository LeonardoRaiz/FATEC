import SomentePar from "@/app/render/condicional/components/SomentePar";
import Lista from "@/app/render/condicional/components/Lista";
import Item from "@/app/render/condicional/components/Item";
import If from "@/app/render/condicional/components/If";
import {setTimeout} from "next/dist/compiled/@edge-runtime/primitives";

export default function CondicionalPage() {
    const numero = 7
    return (
        <>
            <SomentePar numero={1} />
            <SomentePar numero={2} />
            <SomentePar numero={3} />
            <SomentePar numero={4} />
            <SomentePar numero={5} />
            <SomentePar numero={6} />
            <SomentePar numero={7} />
            <SomentePar numero={8} />
            <SomentePar numero={9} />
            <SomentePar numero={10} />
            <br></br>
            {/* Props Children */ }
            <div>
                <Lista>
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                    <Item conteudo="Ipad" />
                </Lista>
            </div>


            <div>
                <If teste={numero % 2 === 0}>
                    <h1>O número { numero } é par</h1>
                </If>
                <If teste={numero % 2 === 1}>
                    <h1>O número { numero } é impar</h1>
                </If>
            </div>
        </>

    )
}