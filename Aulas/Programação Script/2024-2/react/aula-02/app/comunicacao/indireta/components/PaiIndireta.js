import FilhoIndireta from "@/app/comunicacao/indireta/components/FilhoIndireta";

export default function PaiIndireta(props) {
    function falarComigo(param) {
        console.log(param)
        console.log('Alguém falou comigo')
    }

    return (
        <>
            <FilhoIndireta funcao={falarComigo}/>
            <FilhoIndireta />
            <FilhoIndireta />
        </>
    )
}