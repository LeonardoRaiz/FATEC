import Filho from "@/app/comunicacao/components/Filho";

export default function Pai(props) {
    return (
        <>
            <Filho familia={props.familia} nome="Leonardo"/>
            <Filho familia="Raiz" nome="Carolina"/>
            <Filho {...props} nome="Lana"/>
        </>
    )
}