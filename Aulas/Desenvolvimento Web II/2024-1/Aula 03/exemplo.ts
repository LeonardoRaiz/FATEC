namespace LacoRep
{
    let aux: number = 10;
    while (aux != 0){
        console.log(`Hello World! ${aux}`);
        aux -= 1;
    }

    let vida: number = 100;

    while (vida != 0) {
        console.log("Zezim perdeu 1 de vida!");
        vida -= 1;
    }
    console.log("Game Over!!!")

    do {
        console.log("Entrou no DO WHILE!");
        aux += 1;
    } while (aux == 0)

    for (let i = 0; i <= 10; i++){
        console.log(i);
    }
}

