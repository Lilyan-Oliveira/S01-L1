package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	// Entrada de dados
	fmt.Println("Digite o valor de a:")
	fmt.Scanln(&a)
	fmt.Println("Digite o valor de b:")
	fmt.Scanln(&b)
	fmt.Println("Digite o valor de c:")
	fmt.Scanln(&c)

	// Verificar se é uma equação do segundo grau
	if a == 0 {
		fmt.Println("O valor de 'a' não pode ser zero. Isso não é uma equação do segundo grau.")
		return
	}

	// Cálculo do delta
	delta := b*b - 4*a*c

	// Verificação do valor de delta
	if delta < 0 {
		fmt.Println("A equação não possui raízes reais.")
	} else if delta == 0 {
		// Apenas uma raiz real
		x := -b / (2 * a)
		fmt.Printf("A equação possui uma raiz real: x = %.2f\n", x)
	} else {
		// Duas raízes reais
		x1 := (-b + math.Sqrt(delta)) / (2 * a)
		x2 := (-b - math.Sqrt(delta)) / (2 * a)
		fmt.Printf("A equação possui duas raízes reais: x1 = %.2f e x2 = %.2f\n", x1, x2)
	}
}
