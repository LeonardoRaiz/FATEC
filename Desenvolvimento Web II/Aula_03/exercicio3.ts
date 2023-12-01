//Escreva um programa TypeScript que leia um número inteiro do usuário, e imprima todos os números de 1 a esse número que são divisíveis por 3.
namespace exercicio3 {
    let numero: number = 100;
    let index: number = 1;
    let arrayDiv3: number[] = [];
    do{
        if(index % 3 == 0){
            console.log(index);
            arrayDiv3.push(index);
        }
        index++
    } while(index <= numero)
    console.log(arrayDiv3);
    for(let i = 0; i <= arrayDiv3.length; i++){
        console.log(arrayDiv3[i]);
    }
}