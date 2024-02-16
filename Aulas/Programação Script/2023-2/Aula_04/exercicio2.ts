// Crie um array com 3 nomes de frutas. Em seguida, use um loop while para iterar sobre o array e exibir cada fruta em uma linha separada.]

namespace exercicio2 {
    //Crie um array com 3 nomes de frutas
    let frutas: string[] = ["Banana", "Limão", "Pitaia"];
    let i: number = 0;
    //use um loop while para iterar sobre o array e exibir cada fruta em uma linha separada
    while(i < frutas.length){
        console.log(frutas[i] + "\n");
        i++;
    }

}