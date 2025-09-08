package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	exibeMenu()
	comando := lerComando()
	switch comando {
	case 1:
		iniciarMonitoramento()
	case 2:
		fmt.Println("Exibindo logs")
	case 0:
		fmt.Println("Saindo do sistema")
		os.Exit(0)
	default:
		fmt.Println("Nao entendi o comando")
		os.Exit(-1)
	}
}

func exibeMenu() {
	fmt.Println("Menu")

	fmt.Println("1 - Iniciar Monitoramento")
	fmt.Println("2 - Exibir Logs")
	fmt.Println("0 - Sair do sistema")
}

func lerComando() int {
	var comando int
	fmt.Scan(&comando)
	return comando
}

// restante do código omitido

func iniciarMonitoramento() {
	fmt.Println("Monitorando...")
	site := "https://www.google.com.br"
	resp, _ := http.Get(site)
	fmt.Println(resp.StatusCode)
}
