import listaProdutos from "@/data/listaProdutos";

export default function repeticao(props) {
    const listaAprovados = [
        'João',
        'Maria',
        'Ana',
        'Bia',
        'Carlos',
        'Daniel',
        'Laura',
    ]

    function renderLista() {
        return listaAprovados.map((nome, i) => {
            return <li key={i}> {nome} </li>
        })
    }

    function renderLinhas() {
        return listaProdutos.map((produto, i) => {
            return <tr key={produto.id}>
                <td style={comBorda}>{produto.id}</td>
                <td style={comBorda}>{produto.nome}</td>
                <td style={comBorda}>{produto.preco}</td>
            </tr>
        })
    }

    const comBorda = {
        border: "1px solid white",
    }

    return (
        <>
            <ul>
                { renderLista() }
            </ul>
            <table style={comBorda}>
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nome</th>
                        <th>Preço</th>
                    </tr>
                </thead>
                <tbody>
                    {renderLinhas()}
                </tbody>
            </table>
        </>
    )
}