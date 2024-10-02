// Faça um programa que calcule a equação de segundo grau

// 3x^2 + 4x + 5
// a = 3
// b = 4
// c = 5

programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro a, b, c
		real delta, x1, x2
		escreva("Digite o valor de A: ")
		leia(a)
		escreva("Digite a valor de B: ")
		leia(b)
		escreva("Digite a valor de C: ")
		leia(c)

		se (a == 0)
		{
			escreva("Não é uma equação de segundo grau!")
		}
		senao
		{
			        //mat.potencia(b, 2)
			delta = (b * b) - 4 * a * c
			se (delta < 0)
			{
				escreva("Não é um raiz real!")		        
			}
			senao se (delta == 0)
			{
				x1 = (-b)/(2*a)
				escreva("X1 = ", x1)
			}
			senao se (delta > 0)
			{
				x1 = (-b + mat.raiz(delta, 2.0))/(2*a)
				x2 = (-b - mat.raiz(delta, 2.0))/(2*a)
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
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */