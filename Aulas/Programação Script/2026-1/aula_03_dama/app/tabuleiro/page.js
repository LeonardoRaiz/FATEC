import Linha from "@/app/tabuleiro/components/Linha";

export default function Tabuleiro() {
    return (
        <>
            <h1>Tabuleiro Dama</h1>
            {
                Array.from({length: 8}).map((_, i) => (
                    <Linha
                        key={i}
                        preta={i % 2 === 1}
                    />
                ))
            }
        </>
    )
}