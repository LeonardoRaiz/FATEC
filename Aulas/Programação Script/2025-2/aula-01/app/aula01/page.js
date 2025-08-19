export default function aula01() {
    const subtitulo = "Estou aprendendo NEXT.Js"
    let numero = 3
    const multiplicacao = <h3>{numero} X {numero} = {numero * numero}</h3>

    const numeros = []

    for (let i = 0; i < 10; i++) {
        numeros.push(<h3>{Math.floor(Math.random() * 11)}</h3>)
    }

    return (
        <>
            <h1>Aula 01</h1>
            <h2>Teste</h2>
            <p>{subtitulo}</p>
            {multiplicacao}
            <h3>
                {entre(numero, 1, 10)}
            </h3>
            {numeros}
        </>        
    )
}

function entre(valor, min, max) {
    if (valor > min && valor < max) {
        return <h4> SIIIIIIM </h4>
    } else {
        return "Não"
    }
}