// Faça um programa que calcule e mostre a área de um circulo
// A = pi * r^2
programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real raio, area

		escreva("Insira o valor do raio: ")
		leia(raio)

		//area = 3.1415 * mat.potencia(raio, 2.0)
		area = mat.PI * mat.potencia(raio, 2.0)

		escreva("Área: ", area)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 282; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */