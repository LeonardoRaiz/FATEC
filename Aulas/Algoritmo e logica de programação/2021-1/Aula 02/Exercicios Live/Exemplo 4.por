// Faça um programa que receba o salário de um funcionário, calcule e mostre
// o novo salário, sabendo-se que este sofreu um aumento de 25%

programa
{
	
	funcao inicio()
	{
		real salario, novosalario

		escreva("Informe o salário antigo: ")
		escreva("R$")
		leia(salario)
				                       //0.25 
		novosalario = salario + salario * 25/100
		// 1.25
		novosalario = salario * 1.25

		escreva("O novo salário é de R$", novosalario)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 140; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */