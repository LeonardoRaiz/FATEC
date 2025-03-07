{
    //privado  publico  constante
    //let,     var e    const
    let ataque :number = 120;
    let defesaInimigo :number = 50;
    const chanceCritico :number = 25;
    let multiplicadorCritico :number = Math.random() * 100 < chanceCritico ? 3 : 1
    // if (Math.random() * 100 < chanceCritico) {
    //     multiplicadorCritico = 3
    // } else {
    //     if(true)
    //     {
    //         console.log("oi")
    //     }
    //     multiplicadorCritico = 1
    // }
    let danoBase :number = (ataque - defesaInimigo * 0.9) * multiplicadorCritico
    if (danoBase < 0) danoBase = 0         //Modo template
    console.log(multiplicadorCritico > 1 ? `CRITICO!! ${danoBase}` : `Dano básico!! ${danoBase}`)
}