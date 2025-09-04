package main

import (
	"fmt"
	"reflect"
)

func main() {
	//var nome string = "Leonardo"
	name := "Leonardo"
	age := 35

	fmt.Println("Olá, sr.", name)
	fmt.Println("Sua idade é", age, "anos.")

	fmt.Println("O tipo da variavel name é", reflect.TypeOf(name))
}
