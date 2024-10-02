// Faça um programa que receba o salário base de um funcionário, 
// calcule e mostre o salário a receber, sabendo-se que o funcionário 
// tem gratificação de 5% sobre o salario base e paga imposto de 7% 
// sobre este salário.

programa
{
	
	funcao inicio()
	{
		real salario, grat, imp, novosalario
		inteiro percgrat, percimp
		escreva("Informe o salário: ")
		leia(salario)
		escreva("Informe a percentagem da gratificação: ")
		leia(percgrat)
		escreva("Informe a percentagem do imposto: ")
		leia(percimp)
		// Gratificação
		grat = salario * percgrat/100 
		// Imposto
		imp = salario * percimp/100
		// Salário Final
		novosalario = salario + grat - imp

		escreva("O novo salário é de: ", novosalario)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 607; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */