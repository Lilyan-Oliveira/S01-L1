package main

import (
	"fmt"
	"math/rand"
	"time"
)

// Função para calcular o fatorial de um número
func fatorial(n int) int {
	if n == 0 || n == 1 {
		return 1
	}
	return n * fatorial(n-1)
}

func main() {
	// Semente para gerar números aleatórios diferentes a cada execução
	rand.Seed(time.Now().UnixNano())

	// Gerar um número pseudo-aleatório entre 0 e 10
	numero := rand.Intn(10)

	// Calcular o fatorial desse número
	resultado := fatorial(numero)

	// Exibir o número aleatório e o fatorial
	fmt.Printf("Número aleatório: %d\n", numero)
	fmt.Printf("Fatorial de %d é: %d\n", numero, resultado)
}
