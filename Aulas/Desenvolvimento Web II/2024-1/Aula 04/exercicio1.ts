namespace exercicio1
{
    //Crie um array com 4 objetos, cada um representa um livro com as propriedades TITULO, AUTOR e ANO. Em seguida use o método map() para criar um novo array(string) contendo apenas os titulos.

    type Livro = {
        titulo: string,
        autor: string,
        ano: number
    }

    let Livros: Livro[]
    Livros = [
        {
            titulo: "Livro 1",
            autor: "Fulano",
            ano: 2023
        },
        {
            titulo: "Livro 2",
            autor: "Ciclano",
            ano: 900
        },
        {
            titulo: "Livro 3",
            autor: "Zé da estrada",
            ano: 1845
        }
    ]

    let TitulosLivros: string[]

    TitulosLivros = Livros.map(function (livro){
        return livro.titulo;
    })

    TitulosLivros = Livros.map((livro) => {
        return livro.titulo
    })

    console.log(TitulosLivros);
}