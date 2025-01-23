import Titulo from "@/components/Titulo";
import TituloProps from "@/components/TituloProps";
import styles from "./estilo.module.css";
import Estilo from "@/components/Estilo";

export default function Componentes() {
    return (
        <>
            <Titulo></Titulo>
            <TituloProps
                principal = "Página de Cadastro"
                descricao = "Crie o CRUD aqui xD"
            />
            <h2 className={styles.azul}>Teste de estilo</h2>
            <Estilo
                valor = {-1}
                color = "#ddd"
                direita = {true}
                texto = "Algum texto aqui"
            />
        </>
    )
}