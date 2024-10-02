// Faça um programa que receba dois números e mostre o maior 
programa
{
	
	funcao inicio()
	{
		inteiro num1, num2
		escreva("Informe o primeiro número: ")
		leia(num1)
		escreva("Informe o segundo número: ")
		leia(num2)
		
		se(num1 > num2)
		{
			escreva("O número ", num1, " é maior que ", num2)
		}
		senao se(num2 > num1)
		{
			escreva("O número ", num2, " é maior que ", num1)
		}
		senao
		{
			escreva("Os números são iguais")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 71; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */