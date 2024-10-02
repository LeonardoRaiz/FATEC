programa
{
	funcao inicio()
	{
		inteiro num1, num2, result, op
		escreva("------------- Menu ------------- \n")
		escreva("1-) Soma \n")
		escreva("2-) Subtração \n")
		escreva("0-) Sair do menu \n")
		leia(op)

		enquanto (op != 0)
		{
			escolha(op)
			{
				caso 1:
					limpa()
					escreva("----- SOMA ----- \n")
					escreva("Digite o primeiro valor: ")
					leia(num1)
					escreva("Digite o segundo valor: ")
					leia(num2)
					result = num1 + num2
					limpa()
					escreva("Resultado da soma: ", result)
					escreva("\n ------------- Menu ------------- \n")
					escreva("1-) Soma \n")
					escreva("2-) Subtração \n")
					escreva("0-) Sair do menu \n")
					leia(op)
					pare

				caso 2:
					limpa()
					escreva("----- Subtração ----- \n")
					escreva("Digite o primeiro valor: ")
					leia(num1)
					escreva("Digite o segundo valor: ")
					leia(num2)
					result = num1 - num2
					limpa()
					escreva("Resultado da subtração: ", result)
					escreva("\n ------------- Menu ------------- \n")
					escreva("1-) Soma \n")
					escreva("2-) Subtração \n")
					escreva("0-) Sair do menu \n")
					leia(op)
					pare

				caso contrario:
					limpa()
					escreva("Função invalida!!!! \n")
					escreva("------------- Menu ------------- \n")
					escreva("1-) Soma \n")
					escreva("2-) Subtração \n")
					escreva("0-) Sair do menu \n")
					leia(op)
					pare					
					
			}
		}

		escreva("Programa finalizado!!!")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */