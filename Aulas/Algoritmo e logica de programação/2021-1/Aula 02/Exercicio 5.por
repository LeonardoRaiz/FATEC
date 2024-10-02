programa
{	
	funcao inicio()
	{
		real sal, perc, aumento, novosal

		escreva("Informe o salário: ")
		leia(sal)
		escreva("Informe o percentual: ")
		leia(perc)
		aumento = sal * perc/100
		escreva("O aumento é de: ", aumento)
		novosal = sal + aumento
		escreva("O novo salário é de: ", novosal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */