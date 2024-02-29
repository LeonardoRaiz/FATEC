namespace vetor
{
    let num: number[] = [2, 4, 6, 8];
    let  valor: number = num[3];
    console.log(valor);
    console.log(num);
    console.log(num[0]);
    console.log(num[1]);
    console.log(num[2]);
    console.log(num[3]);
    for (let i = 0; i < num.length; i++)
    {
        console.log(num[i]);
    }

    let cores: Array<string> = ["Vermelho", "Verde", "Azul"];
    //let cores: string[] = ["Vermelho", "Verde", "Azul"];

    type Aluno = {
        ra: number,
        nome: string,
        idade: number
    }
    let alunos: Aluno[];
    alunos = [{
        ra: 12321321312,
        nome: "Fulano",
        idade: 10
    },
    {
        ra: 12344414145,
        nome: "Ciclano",
        idade: 91
    }]

    alunos.forEach(function (aluno){
        console.log(aluno);
    })

    let quadrados: number[]
    quadrados = num.map(function (numero){
        return numero * numero;
    })

    for (let i = 0; i < num.length; i++)
    {
        quadrados[i] = num[i] * num[i];
    }

    console.log(alunos[1].ra);
}