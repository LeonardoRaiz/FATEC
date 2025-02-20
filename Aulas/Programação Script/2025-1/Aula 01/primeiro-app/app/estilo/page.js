import Alele from "./css/style.module.css"
import Estilo from "@/app/estilo/components/Estilo";

export default function EstiloPage() {
    return (
        <div>
            <h1 className={Alele.h1}>Aula Estilo</h1>
            <button className={Alele.button}>Clique Aqui 😍</button>
            <Estilo texto={"Vai chover!!!"} direita temp={30}></Estilo>
            <Estilo texto={"Vai chover!!!"} temp={18}></Estilo>
        </div>
    )
}