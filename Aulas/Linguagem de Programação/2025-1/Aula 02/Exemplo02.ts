{
    let velocidadeInicial :number = 35;
    let angulo :number = 45;
    const gravidade :number = 9.8;
    let coef :number = 0.1;
    let distancia :number = (Math.pow(velocidadeInicial, 2)
        * Math.sin(2 * angulo)) / gravidade;
    distancia -= coef * distancia;
    console.log(distancia);
    let anguloRadial = (angulo * Math.PI) / 180
    let tempo :number = (2 * velocidadeInicial * Math.sin(anguloRadial)) / gravidade;
    console.log(tempo);
}