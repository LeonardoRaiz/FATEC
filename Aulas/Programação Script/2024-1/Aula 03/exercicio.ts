namespace exercicio1
{
    //Escreva um programa em TS que mostre os números primos de 0 a 100 utilizando apenas o laço de repetição WHILE
    let numero: number = 2

    while (numero <= 100)
    {
        let ehPrimo: boolean = true;
        let divisor: number = 2;
        while (divisor < numero)
        {
            if (numero % divisor == 0)
            {
                ehPrimo = false;
                break;
            }
            divisor++;
        }
        if (ehPrimo == true)
        {
            console.log(numero);
        }
        numero++;
    }
}