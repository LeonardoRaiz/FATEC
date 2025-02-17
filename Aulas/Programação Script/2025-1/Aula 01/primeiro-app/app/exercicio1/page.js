export default function ExercicioPage() {
    const numeros = [];
    for (let i = 1; i <= 10; i++) {
        numeros.push(<p key={i}>{i}</p>);
    }
    return (
        <div>
            <h1>Desafio - Lista de números</h1>
            <p>
                Crie um componente React que exiba uma lista de números de 1 a 10 usando um loop for. Cada número deve ser envolvido em um elemento span e todos os números devem ser exibidos em sequência na página. O componente deve ter um título "Lista de Números" acima da sequência de números.

                Requisitos:

                - Utilize um array para armazenar os elementos span
                - Use um loop for para gerar os números de 1 a 10
                - Cada número deve estar dentro de um elemento span
                - O componente deve ter um título h1
            </p>
            {numeros}
        </div>
    )
}