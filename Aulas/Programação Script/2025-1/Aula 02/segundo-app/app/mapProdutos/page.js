import listaProdutos from "@/data/listaProdutos";

export default function TabelaDeProdutos(){
    function renderLinhas(){
        return listaProdutos.map((produto) => (
            <tr key={produto.id}>
                <td>{produto.id}</td>
                <td>{produto.nome}</td>
                <td>{produto.preco}</td>
            </tr>
        ))
    }

    return (
        <div>
            <h1>Tabela de Produtos</h1>
            <table>
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
        </div>
    )
}