// Faça um programa que receba o salário de um funcionário 
//e o percentual de aumento, calcule e mostre o novo salário.

programa
{
	
	funcao inicio()
	{
		real salario, novosalario, aumento
		inteiro perc
		
		escreva("Informe o salário antigo: ")
		escreva("R$")
		leia(salario)
		escreva("Informe o percentual: ")
		leia(perc)

		aumento = salario * perc/100
		escreva("Aumento: ", aumento, "\n")
				
		novosalario = salario + aumento

		escreva("O novo salário é de R$", novosalario)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 399; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */