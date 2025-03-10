import Linha from "@/app/components/Linha";

export default function Home() {
  return (
    <div style={{
        height: "100vh",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        flexDirection: "column",
    }}>
      <h1 style={{
          color: "white",
      }}>DAMA</h1>
        <Linha peca/>
        <Linha preta peca/>
        <Linha peca/>
        <Linha preta/>
        <Linha />
        <Linha preta peca jogador2/>
        <Linha peca jogador2/>
        <Linha preta peca jogador2/>
    </div>
  );
}
