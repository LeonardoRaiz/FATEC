programa
{
	funcao inicio()
	{
		real sal, salReceber, grat, imp

		escreva("Informe o salário: ")
		leia(sal)
		grat = sal * 5/100
		imp = sal * 7/100
		salReceber = sal + grat - imp
		escreva("O salário final é de: ", salReceber)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */