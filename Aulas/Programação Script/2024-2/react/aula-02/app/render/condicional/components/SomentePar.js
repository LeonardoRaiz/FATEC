export default function SomentePar(props) {
    // if (props.numero % 2 === 0) {
    //     return <h1>{props.numero}</h1>
    // } else {
    //     return null
    // }
    const numeroPar = props.numero % 2 === 0;
    return (
        <>
            {
                numeroPar ? <h1>{props.numero}</h1> : null
            }
        </>
    )
}