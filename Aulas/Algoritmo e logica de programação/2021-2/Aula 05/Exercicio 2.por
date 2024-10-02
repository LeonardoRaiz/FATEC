// Faça um programa que simule uma calculadora, as operações serão
// soma
// subtração 
// multiplicação
// divisão

programa
{
	
	funcao inicio()
	{
		caracter op
		real num1, num2, resultado

		 escreva("Informe o primeiro número: ")
		 leia(num1)

		 escreva("Informe a operação: ")
		 leia(op)
		 
		 escreva("Informe o segundo número: ")
		 leia(num2)
		 
		 resultado = 0.0
		 escolha(op)
		 {
		 	caso '+': resultado = num1 + num2
		 			pare

		 	caso '-': resultado = num1 - num2
		 			pare

		 	caso '/': resultado = num1 / num2
		 			pare

		 	caso '*': resultado = num1 * num2
		 			pare
		 	
		 }

		 escreva("O resultado da operação: ", resultado)
		 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 370; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */