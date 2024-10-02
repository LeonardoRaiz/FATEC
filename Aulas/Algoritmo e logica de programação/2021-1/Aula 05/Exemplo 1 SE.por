// Faça um programa que receba o código correspondete ao cargo de um 
// funcionario e seu salario atual e mostre o cargo, o valor do aumento
// e seu novo salario. Os cargos estão abaixo na tabela:

// 1 Escriturario    50%
// 2 Secretario      35%
// 3 Caixa           20%
// 4 Gerente         10%
// 5 Diretor         não tem aumento


programa
{
	funcao inicio()
	{
		real salario, aumento, novo_salario
		inteiro cargo
		escreva("-- MENU AUMENTA SALÁRIO -- \n")
		escreva("1) Escriturário \n")
		escreva("2) Secretário \n")
		escreva("3) Caixa \n")
		escreva("4) Gerente \n")
		escreva("5) Diretor \n")
		escreva("--------------------------------------- \n")
		escreva("Digite o cargo do funcionário: ")
		leia(cargo)
		escreva("Escreva o salário antigo do funcionário: ")
		leia(salario)

		se (cargo == 1) 
		{
			escreva("O salário atual é: ", salario)
			escreva("O cargo é Escriturário!")
			aumento = salario * 50/100
			escreva("O aumento é: ", aumento)
			novo_salario = salario + aumento
			escreva("O novo salário é: ", novo_salario)
		}

		senao se (cargo == 2)
		{
			escreva("O salário atual é: ", salario)
			escreva("O cargo é Secretário!")
			aumento = salario * 35/100
			escreva("O aumento é: ", aumento)
			novo_salario = salario + aumento
			escreva("O novo salário é: ", novo_salario)
		}

		senao se (cargo == 3)
		{
			escreva("O salário atual é: ", salario)
			escreva("O cargo é Caixa!")
			aumento = salario * 20/100
			escreva("O aumento é: ", aumento)
			novo_salario = salario + aumento
			escreva("O novo salário é: ", novo_salario)
		}

		senao se(cargo == 4)
		{
			escreva("O salário atual é: ", salario)
			escreva("O cargo é Gerente!")
			aumento = salario * 10/100
			escreva("O aumento é: ", aumento)
			novo_salario = salario + aumento
			escreva("O novo salário é: ", novo_salario)
		}

		senao
		{
			escreva("O salário atual é: ", salario)
			escreva("O cargo é Diretor!")
			aumento = salario * 0/100
			escreva("O aumento é: ", aumento)
			novo_salario = salario + aumento
			escreva("O novo salário é: ", novo_salario)
		}
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1082; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */