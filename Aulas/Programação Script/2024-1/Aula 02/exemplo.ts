namespace Condicao
{
    let vida: number = 100;
    let ataque: number = 5;
    let nome: string = "Jubileu";
    let exp: number = 0;
    let nivel: number = 1;
    let status: string = "Vivo";

    console.log(`O ${nome} atacou e ganhou 5xp`);
    exp = exp + 5 // exp += 5;
    console.log(`O ${nome} atacou e ganhou 5xp`);
    exp = exp + 5 // exp += 5;
    if(exp > 5 && exp < 10){
        console.log(`O ${nome} subiu de nível!\nFoi para o nível ${nivel += 1}`);
        vida += 10;
        ataque += 1;
        console.log(`************* ${nome} *************\nVida: ${vida}\nAtaque: ${ataque}\n**********************\n `)
    } else {
        console.log(`O ${nome} subiu de nível!\nFoi para o nível ${nivel += 2}`);
        vida += 20;
        ataque += 2;
        console.log(`************* ${nome} *************\nVida: ${vida}\nAtaque: ${ataque}\n**********************\n `)
    }
    vida = 0;
    status = vida <= 0 ? `O ${nome} morreu` : `O ${nome} está vivo!`;
    console.log(status);

    let acao: number = Math.floor(Math.random() * 4) + 1;

    switch (acao)
    {
        case 1: console.log(`O ${nome} atacou o boss!`);
                break;
        case 2: console.log(`O ${nome} defendeu o ataque!`);
                break;
        case 3: console.log(`O ${nome} usou uma magia!`);
                break;
        default: console.log(`O ${nome} levou dano!`);
    }
}