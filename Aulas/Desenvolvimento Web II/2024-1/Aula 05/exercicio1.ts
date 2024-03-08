namespace exercicio1
{
    //Faça uma função que substitua as vogais de um array por *
    let vogais: string[] = ["a", "G", "e", "C", "O", "I"];
    function trocaVogais(vetor: string[]): string[] {
        for (let i = 0; i < vetor.length; i++)
        {
            if (vetor[i] == "a" || vetor[i] == "e" || vetor[i] == "i" || vetor[i] == "o"|| vetor[i] == "u" || vetor[i] == "A" || vetor[i] == "E" || vetor[i] == "I" || vetor[i] == "O"|| vetor[i] == "U" )
            {
                vetor[i] = "*"
            }
        }
        return vetor
    }

    function trocaVogais1(vetor: string[]): string[] {
        return vetor.map(char => char.replace(/[aeiou]/gi, '*'))
    }
}