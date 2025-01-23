export default function Item(props) {
    return (
            <li style={{
                backgroundColor: "#333ea4",
                width: "200px",
                height: "200px",
                display: "flex",
                justifyContent: "center",
                alignItems: "center",
                borderRadius: "5px",
                marginTop: "10px"
            }}>{props.conteudo}</li>
    )
}