export default function Display(props) {
    return (
        <div style={{
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            backgroundColor: "#888",
            color: '#fff',
            width: '100px',
            height: '100px',
            borderRadius: "50%",
            margin: "10px",
            fontSize: "40px"
        }}>
            {props.valor}
        </div>
    )
}