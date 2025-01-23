export default function FilhoIndireta(props) {
    // "Passei na Faculdade"
    console.log(props.funcao)
    return (
        <>
            <h1>Filho</h1>
            <button onClick={() => props.funcao("Passei na Faculdade")} >Falar com o Pai</button>
        </>
    )
}