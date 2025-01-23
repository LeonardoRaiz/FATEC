export default function Estilo(props) {
    return (
        <>
            <h1 style={{
                textAlign: props.direita ? "right" : "left",
                backgroundColor: props.valor >= 0 ? '#429d92' : '#bb22dd',
                color: props.color
            }}
            >{props.texto}</h1>
        </>
    )
}