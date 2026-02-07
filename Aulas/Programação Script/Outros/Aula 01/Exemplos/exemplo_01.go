package main

import "fmt"

func main() {
	var nome string = "Aluno Fatec"
	var idade int

	curso := "Análise e Desenvolvimento de Sistemas"
	semestre := 3
	nota := 8.5

	idade = 20

	fmt.Println("--- Ficha do Aluno ---")
	fmt.Printf("Nome: %s\n", nome)
	fmt.Printf("Idade: %d\n", idade)
	fmt.Printf("Curso: %s (%dº Semestre)\n", curso, semestre)
	fmt.Printf("Nota: %.1f\n", nota)

	fmt.Println("\n--- Contagem Regressiva (Loop) ---")
	for i := 5; i > 0; i-- {
		fmt.Print(i, "... ")
	}
	fmt.Println("Decolar!")
}
