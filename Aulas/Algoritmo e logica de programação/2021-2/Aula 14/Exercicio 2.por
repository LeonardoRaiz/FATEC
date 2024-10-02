programa
{
	
	funcao inicio()
	{
		inteiro notas[10][3]
		inteiro maior, menor, pMenor, mNota1, mNota2, mNota3

		mNota1 = 0
		mNota2 = 0
		mNota3 = 0
		
		para(inteiro i = 0; i < 10; i++)
		{
			para(inteiro j = 0; j < 3; j++)
			{
				escreva("Informe a nota da prova: ", j + 1 ," do aluno: ", i + 1, " :")
				leia(notas[i][j])
			}
		}

		para(inteiro i = 0; i < 10; i++)
		{
			maior = notas[i][0]
			para(inteiro j = 0; j < 3; j++)
			{
				se(notas[i][j] > maior)
				{
					maior = notas[i][j]
				}
			}
			escreva("Aluno ", i + 1, " teve sua maior nota: ", maior, "\n")

			menor = notas[i][0]
			pMenor = 0
			para(inteiro j = 0; j < 3; j++)
			{
				se(notas[i][j] < menor)
				{
					menor = notas[i][j]
					pMenor = j
				}
			}

			se(pMenor == 0)
			{
				mNota1 = mNota1 + 1
				//mNota1++
			}

			se(pMenor == 1)
			{
				mNota2 = mNota2 + 1
			}

			se(pMenor == 2)
			{
				mNota3 = mNota3 + 1
			}
		}

		escreva("Quantidade de alunos com notas ruins na prova 1: ", mNota1, "\n")
		escreva("Quantidade de alunos com notas ruins na prova 2: ", mNota2, "\n")
		escreva("Quantidade de alunos com notas ruins na prova 3: ", mNota3)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */