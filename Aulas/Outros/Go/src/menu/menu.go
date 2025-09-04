package main

import "fmt"

func main() {
	fmt.Println("Menu")

	fmt.Println("1 - Iniciar Monitoramento")
	fmt.Println("2 - Exibir Logs")
	fmt.Println("0 - Sair do sistema")

	var comando int
	fmt.Scan(&comando)
	fmt.Println("O comando foi escolhido", comando)
	fmt.Println("O endereço da minha variavel comando é", &comando)

}
