namespace Funcao
{
    function soma(numero1:number, numero2:number):number {
        let result: number = numero1 + numero2;
        return result
    }
    console.log(soma(3, 5));

    function concatenar(texto1: string, texto2?:string, separador: string = " "){
        if (texto2){
            return texto1 + separador + texto2
        } else {
            return texto1
        }
    }

    let resultado: string = concatenar("Olá", "Mundo!");
    console.log(resultado);
    resultado = concatenar("Olá!");
    console.log(resultado);
    resultado = concatenar("Olá", "Leonardo", " - ");
    console.log(resultado);

    function saudacao(nome?:string)
    {
        if (nome){
            return `Olá ${nome}`;
        } else {
            return "Olá!";
        }
    }

    function multiplicar(numero: number, callback: (resultado:number) => void) {
        const resultado:number = numero * 2
        callback(resultado);
    };

    multiplicar(4, function (resultado) {
        console.log(`O resultado é igual: ${resultado}`)
    })

    function dividir(numero:number, callback: (resto:number) => void){
        const resto: number = numero % 2;
        callback(resto);
    }

    dividir(10, function (resto) {
        console.log(resto === 0 ? "Par" : "Impar");
    })
}