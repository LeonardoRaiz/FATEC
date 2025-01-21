import Titulo from "@/components/Titulo";
import TituloProps from "@/components/TituloProps";

export default function Componentes() {
    return (
        <>
            <Titulo></Titulo>
            <TituloProps
                principal = "Página de Cadastro"
                descricao = "Crie o CRUD aqui xD"
            />
        </>
    )
}