export default function Lista(props) {
    return (
        <>
            <h1>Lista</h1>
            <ul style={{
                display: 'flex',
                flexWrap: 'wrap',
                justifyContent: 'space-between',
                alignItems: 'stretch',
                listStyle: "none",
                padding: '1rem',
                backgroundColor: '#226ddd',
                border: '1px solid white',
            }}>
                {props.children}
            </ul>
        </>
    )
}