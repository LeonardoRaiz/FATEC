export default function Display(props) {
    return (
        <div style={{
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            backgroundColor: '#eef3fc',
            color: '#111',
            width: '100px',
            height: '100px',
            borderRadius: '50%',
            margin: '10px',
            fontSize: '50px',
        }}>
            {props.valor}
        </div>
    )
}