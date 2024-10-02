// Faça um programa que receba um valor inteiro e posito, calcule e mostre
// o numero digitado ao quadrado
// numero digitado ao cubo
// raiz quadrada do numero
// raiz cubica do numero
programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro num
		real equa
		
		escreva("Informe o número: ")
		leia(num)
		
		equa = mat.potencia(num, 2.0)
		escreva("número ", num," elevado ao quadrado: ", equa, "\n")
		
		equa = mat.potencia(num, 3.0)
		escreva("número ", num," elevado ao cubo: ", equa, "\n")
		
		equa = mat.raiz(num, 2.0)
		escreva("raiz quadrada do número ", num,": ", equa, "\n")
		
		equa = mat.raiz(num, 3.0)
		escreva("raiz cubica do número ", num,": ", equa)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */