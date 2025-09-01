
import Linha from "@/app/components/Linha";

export default function Home() {
  return (
    <div >
      <h1>Tabuleiro</h1>
        <Linha peca/>
        <Linha peca cor/>
        <Linha peca/>
        <Linha cor/>
        <Linha />
        <Linha peca cor jogador2/>
        <Linha peca  jogador2/>
        <Linha peca cor jogador2/>
    </div>
  );
}
