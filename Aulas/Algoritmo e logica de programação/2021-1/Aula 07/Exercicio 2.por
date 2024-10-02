// Crie um programa que leia um numero e apresente seu fatorial
programa
{
	
	funcao inicio()
	{	
		inteiro numero, fatorial, contador

		contador = 1
		fatorial = 1
		
		escreva("Digite o valor: ")
		leia(numero)

		enquanto (contador <= numero)
		{
			fatorial = fatorial * contador
			//contador = contador + 1
			contador++
		}

		escreva("O fatorial de ", numero, " é: ", fatorial)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */