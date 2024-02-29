namespace exercicio1
{
    //Escreva um programa TypeScript que imprima todos os números primos de 1 a 53 usando a função while.
    let num: number = 2
    while (num <= 53)
    {
        let ehPrimo: boolean = true;
        let divisor: number = 2;
        while (divisor < num)
        {
            if (num % divisor === 0)
            {
                ehPrimo = false;
                break;
            }
            divisor++;
        }
        if (ehPrimo == true){
            console.log(num);
        }
        num++
    }
}