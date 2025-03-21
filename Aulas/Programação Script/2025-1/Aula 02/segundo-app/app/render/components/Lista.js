export default function Lista(props) {
    return (
        <>
            <h1>Lista</h1>
            <ul>
                {props.children}
            </ul>
        </>
    )
}