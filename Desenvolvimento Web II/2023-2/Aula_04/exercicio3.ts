//Crie um array vazio. Em seguida, use o método **`push()`** para adicionar 3 números ao array. Em seguida, use o método **`pop()`** para remover o último número do array e exibir o array resultante.

namespace exercicio3 {
    function criarNovoArray(num1: number, num2: number, num3: number){
        let array: number[] = [];
        array.push(num1);
        array.push(num2);
        array.push(num3);
        return array;
    }

    let meuArrayInicial: number[] = criarNovoArray(20, 30, 40);
    console.log(meuArrayInicial);

    function removeValor(array: number[]){
        if(array.length > 0){
            array.pop();
        }
        return array
    }

    let meuArrayModificado = removeValor(meuArrayInicial);
    console.log(meuArrayModificado);
}