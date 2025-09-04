package main

import "fmt"

func main() {
	fmt.Println("Menu")

	fmt.Println("1 - Iniciar Monitoramento")
	fmt.Println("2 - Exibir Logs")
	fmt.Println("0 - Sair do sistema")

	var comando int
	fmt.Scan(&comando)

	switch comando {
	case 1:
		fmt.Println("Iniciando monitoramento")
	case 2:
		fmt.Println("Exibindo logs")
	case 0:
		fmt.Println("Saindo do sistema")
	default:
		fmt.Println("Nao entendi o comando")
	}
}
