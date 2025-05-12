export function mega(qtd = 6, numeros = []) {
    qtd = +qtd
    if (qtd < 2 && qtd > 60){
        throw "Quantidade invalida"
    }

    if (numeros.length === qtd)
    {
        return numeros.sort((a, b) => a - b)
    }
    const numAleatorio = parseInt(Math.random() * 60) + 1

    if (!numeros.includes(numAleatorio))
    {
        return mega(qtd, [...numeros, numAleatorio])
    } else {
        return mega(qtd, numeros)
    }
}