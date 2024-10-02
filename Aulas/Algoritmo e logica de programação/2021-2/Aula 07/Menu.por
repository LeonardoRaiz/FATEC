programa
{
	
	funcao inicio()
	{
		inteiro op, num1, num2, result

		escreva("---------- MENU ---------------- \n")
		escreva("1) Soma \n")
		escreva("2) Subtração \n")
		escreva("0) Sair do Menu \n")
		escreva("Escolha sua opção ")
		leia(op)

		enquanto(op != 0)
		{
			escolha(op)
			{
				caso 1: escreva("Digite o primeiro valor: ")
					   leia(num1)
					   escreva("Digite o segundo valor: ")
					   leia(num2)
					   result = num1 + num2
					   escreva("O resultado é: ", result, "\n")
					   pare
					   
				caso 2: escreva("Digite o primeiro valor: ")
					   leia(num1)
					   escreva("Digite o segundo valor: ")
					   leia(num2)
					   result = num1 - num2
					   escreva("O resultado é: ", result, "\n")
					   pare	
			}

			escreva("---------- MENU ---------------- \n")
			escreva("1) Soma \n")
			escreva("2) Subtração \n")
			escreva("0) Sair do Menu \n")
			escreva("Escolha sua opção ")
			leia(op)
			
		}

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */