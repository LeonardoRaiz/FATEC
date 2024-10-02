// Faça um programa que receba um número inteiro e verifique se é par ou impar.
programa
{
	
	funcao inicio()
	{
		inteiro num, resto
		escreva("Informe o número: ")
		leia(num)

		resto = num % 2

		se(resto == 0)
		{
			escreva("O número é par!")
		}
		senao
		{
			escreva("O núemro é impar!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 189; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */