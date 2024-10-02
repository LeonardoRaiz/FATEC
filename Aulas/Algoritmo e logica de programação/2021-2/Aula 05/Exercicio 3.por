// Faça um programa que calcule a equação de segundo grau

// 3x^2 + 4x + 5
// a = 3
// b = 4
// c = 5

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real a, b, c
		real delta, x1, x2
		escreva("A:")
		leia(a)
		escreva("B:")
		leia(b)
		escreva("C:")
		leia(c)
			//igual
		se(a == 0)
		{
			escreva("Não é uma equação do segundo grau!!!")
		}
		senao
		{			//Matematica.potencia(b, 2)
			delta = (b * b) - 4 * a * c
			se(delta < 0)
			{
				escreva("Não é uma raiz real!")
			} senao se(delta == 0)
			{
				x1 = (-b)/(2*a)
				escreva("X1 = ", x1)
			} senao se (delta > 0)
			{
				x1 = (-b + Matematica.raiz(delta, 2.0))/(2*a)
				x2 = (-b - Matematica.raiz(delta, 2.0))/(2*a)
				escreva("X1 = ", x1, "\n")
				escreva("X2 = ", x2)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 609; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */