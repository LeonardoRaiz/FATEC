programa
{
	//Principal!!!
	funcao inicio()
	{
		escreva("O resultado da soma é: ", soma(5, 3), "\n")
		escreva("O resultado da soma é: ", soma(-1, 7), "\n")
		escreva("O resultado da soma é: ", soma(2, 25), "\n")
		escreva("O resultado da soma é: ", soma(-9, -3), "\n")
		escreva("O resultado da soma é: ", soma(40, 78), "\n")
		escreva("O resultado da soma é: ", soma(152, 6), "\n")
		escreva("O resultado da soma é: ", soma(10, -9), "\n")
		escreva("O resultado da soma e multiplicação é: ", somaMulti(10, 5, 2), "\n")
		escreva("O resultado da divisão é: ", div(10.0, 2.0), "\n")
	}
	//---------------------------------------

	funcao inteiro soma(inteiro num1, inteiro num2)
	{
		 inteiro resultado
		 resultado = num1 + num2
		 retorne resultado
	}

	funcao inteiro somaMulti(inteiro num1, inteiro num2, inteiro mult)
	{
		inteiro resultado
		resultado = soma(num1, num2) * mult
		retorne resultado
	}

	funcao real div(real num1, real num2)
	{
		real resultado
		resultado = num1 / num2
		retorne resultado
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 580; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */