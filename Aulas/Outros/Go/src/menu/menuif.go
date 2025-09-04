package main

import "fmt"

func main() {
	fmt.Println("Menu")

	fmt.Println("1 - Iniciar Monitoramento")
	fmt.Println("2 - Exibir Logs")
	fmt.Println("0 - Sair do sistema")

	var comando int
	fmt.Scan(&comando)

	if comando == 1 {
		fmt.Println("Iniciando monitoramento")
	} else if comando == 2 {
		fmt.Println("Exibindo logs")
	} else if comando == 0 {
		fmt.Println("Saindo do sistema")
	} else {
		fmt.Println("Não entendi o comando")
	}
}
