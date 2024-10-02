// Sabe-se que:
// 1 pé = 12 polegadas 1 * 12
// 1 jarda = 3 pés 
// 1 milha = 1760 jardas
// Faça um programa que receba uma medida em pés, faça as conversões a seguir e
// mostre os resultados
// polegada
// jarda
// milhas
programa
{
	
	funcao inicio()
	{
		real pes, polegadas, jardas, milhas
		escreva("Informe a medida em pés: ")
		leia(pes)
		
		polegadas = pes * 12
		jardas = pes/3
		milhas = jardas / 1760

		escreva("Polegadas: ", polegadas, "\n")
		escreva("Jardas: ", jardas, "\n")
		escreva("Milhas: ", milhas, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */