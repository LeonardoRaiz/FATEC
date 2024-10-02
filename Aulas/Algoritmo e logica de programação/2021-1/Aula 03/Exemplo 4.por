//Faça um programa que receba dois números maiores que zero, calcule e mostre
//um elevado ao outro

programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real num1, num2, equa
		
		escreva("Informe o primeiro número maior que zero: ")
		leia(num1)
		escreva("Informe o segundo número maior que zero: ")
		leia(num2)
		
		equa = mat.potencia(num1, num2)
		escreva("Primeira regra: ", equa, "\n")
		equa = mat.potencia(num2, num1)
		escreva("Segunda regra: ", equa)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */