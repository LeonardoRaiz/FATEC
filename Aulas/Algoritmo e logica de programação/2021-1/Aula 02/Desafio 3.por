programa
{
	funcao inicio()
	{
		real dep, rend, total, taxa

		escreva("Insira o valor do depósito: ")
		leia(dep)
		escreva("Insira o valor da taxa: ")
		leia(taxa)
		rend = dep * taxa/100
		total = dep + rend
		escreva("O rendimento final é de: ", rend)
		escreva("O valor total depois do rendimento é de:", total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */