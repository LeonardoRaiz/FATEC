package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("🐹 Go: Iniciando contagem...")
	start := time.Now()

	var soma int64 = 0
	for i := 0; i < 100_000_000; i++ {
		soma += int64(i)
	}

	duration := time.Since(start)
	fmt.Printf("Resultado: %d\n", soma)
	fmt.Printf("Tempo: %f segundos\n", duration.Seconds())
}
