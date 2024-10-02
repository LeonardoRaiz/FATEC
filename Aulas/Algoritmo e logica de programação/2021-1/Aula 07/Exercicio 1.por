//Crie um progrma que receba um numero e some todos os numeros anteriores a este numero

programa
{
	
	funcao inicio()
	{
		inteiro numLimite, soma

		soma = 0
		
		escreva("Digite o número até o qual deseja somar: ")
		leia(numLimite)

		para(inteiro i = 0; i <= numLimite; i++)
		{
			soma = soma + i
		}

		escreva("O resultado final: ", soma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 359; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */