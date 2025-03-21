export default function Item(props) {
    return (
        <li style={{
            color: props.cor
        }}>
            {props.conteudo}
        </li>
    )
}