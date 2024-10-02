// Faça um programa que receba o ano do nascimento de uma pessoa e o ano atual,
// calcule e mostre
// a idade desta pessoa
// quantos anos ela terá 2050
programa
{
	
	funcao inicio()
	{
		inteiro ano_atual, ano_nasc, idade_atual, idade_2050
		escreva("Insira o ano atual: ")
		leia(ano_atual)
		escreva("Insira o ano do nascimento: ")
		leia(ano_nasc)
		
		idade_atual = ano_atual - ano_nasc
		idade_2050 = 2050 - ano_nasc

		 escreva("Idade atual: ", idade_atual, "\n")
		 escreva("Idade 2050: ", idade_2050, "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 513; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */