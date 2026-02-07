package main

import "fmt"

func main() {
	var notasFixas [3]float64
	notasFixas[0] = 7.5
	notasFixas[1] = 8.0
	notasFixas[2] = 9.5
	// notasFixas[3] = 10.0 // ERRO!
	fmt.Println("Array Fixo:", notasFixas)

	frutas := []string{"Maçã", "Banana"}

	frutas = append(frutas, "Laranja")
	frutas = append(frutas, "Uva")

	fmt.Println("\nSlice de Frutas:", frutas)
	fmt.Printf("Tamanho: %d | Capacidade: %d\n", len(frutas), cap(frutas))

	pedaco := frutas[1:3]
	fmt.Println("Pegando só Banana e Laranja:", pedaco)

	estoque := make(map[string]int)
	estoque["Notebook"] = 10
	estoque["Mouse"] = 50
	estoque["Teclado"] = 25

	fmt.Println("\n--- Estoque (Map) ---")
	for produto, quantidade := range estoque {
		fmt.Printf("%s: %d unidades\n", produto, quantidade)
	}

	qtd, existe := estoque["Monitor"]
	if existe {
		fmt.Println("Monitor em estoque:", qtd)
	} else {
		fmt.Println("Monitor não cadastrado!")
	}
}
