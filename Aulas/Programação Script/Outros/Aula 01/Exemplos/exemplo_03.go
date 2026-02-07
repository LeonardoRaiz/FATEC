package main

import "fmt"

func main() {
	numeros := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

	var somaPares int = 0

	fmt.Println("Lista Original:", numeros)
	fmt.Print("Pares encontrados: ")

	for _, numero := range numeros {
		if numero%2 == 0 {
			fmt.Print(numero, " ")
			somaPares += numero
		}
	}

	fmt.Printf("\n\nResultado da Soma dos Pares: %d\n", somaPares)
}
