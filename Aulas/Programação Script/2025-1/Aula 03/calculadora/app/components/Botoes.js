export default function Botoes(props) {
    return (
        <div>
            <button onClick={props.onClick}>
                {props.valor}
            </button>
        </div>
    )
}