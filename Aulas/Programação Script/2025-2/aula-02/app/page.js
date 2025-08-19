import styles from "./page.module.css";
import Titulo from "@/app/components/Titulo";

export default function Home() {
  return (
    <div>
        <h1 className={styles.texto}>Aula 02 - Componentes</h1>
        <Titulo titulo="Megaman" subtitulo="Super Nintendo" cor="#e376a1" subsubtitulo="1988"/>
        <Titulo titulo="Super Mario" subtitulo="Nintendinho " cor="#e2e19a" subsubtitulo="1987"/>
    </div>
  );
}
