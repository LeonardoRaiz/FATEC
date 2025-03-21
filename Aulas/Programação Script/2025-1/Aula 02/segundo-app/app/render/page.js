import If from "@/app/render/components/If";
import Par from "@/app/render/components/Par";
import Lista from "@/app/render/components/Lista";
import Item from "@/app/render/components/Item";

export default function Render()
{
    const vidaVilao = 10;
    const numero = 3
    const estoque = 10
    return(
        <div>
            <h1>Renderização Condicional</h1>
            <If teste={vidaVilao > 0}>
                <h1>O vilão está vivo!!!</h1>
            </If>
            <If teste={vidaVilao <= 0}>
                <h1>O vilão está morto!!!</h1>
            </If>
            <If teste={numero % 2 === 0}>
                <h1>O número: {numero} é par</h1>
            </If>

            {Array.from({length: 10}, (_, index) => (
                <Par key={index} numero={index + 1}></Par>
            ))}

            <Lista>
                <Item cor={"blue"} conteudo={"Item 1"}/>
                <If teste={estoque > 0}>
                    <Item cor={"red"} conteudo={"Item 2"}/>
                </If>
                <Item cor={"green"} conteudo={"Item 3"}/>
            </Lista>

        </div>
    )
}