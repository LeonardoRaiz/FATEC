export default function Page() {
    const subtitulo = "Estou aprendendo NextJS"
    const multiplicacao = <h3>{3 * 3}</h3>

    return (
        //<> <!-->React.Fragment<-->
        <>
            <h1>JSX</h1>
            <h2>{subtitulo}</h2>
            {multiplicacao}
            <h4>{Math.floor(Math.random() * 100)}</h4>
            <h5>{entre(10, 1, 20)}</h5>
            {gerarlistra(10)}
        </>
    )
}

function entre(valor, min, max) {
    if (valor > min && valor < max) {
        return "Sim"
    } else {
        return "Não"
    }
}

function gerarlistra(valor) {
    const numeros = []
    for(let i = 1; i <= valor; i++) {
        numeros.push(<span key={i}>{i}, </span>)
    }
    return (
        <div>
            <h1>Lista de Números</h1>
            {numeros}
        </div>
    )
}