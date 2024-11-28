//Fazer um algoritmo que leia uma matriz 3x3 e possua um subprograma que atribua o valor 0 
//para todos os valores negativos da matriz e retorne a quantidade de valores alterados

programa {
  funcao inicio() {
    inteiro matriz[3][3]
    inteiro valoresAlterados
    escreva("Informe os valores da matriz: ")
    para(inteiro i = 0; i < 3; i++)//linha
    {
      para(inteiro j = 0; j < 3; j++)//coluna
      {
        leia(matriz[i][j])
      }
    }

    valoresAlterados = trocaNegativos(matriz)

    para(inteiro i = 0; i < 3; i++)//linha
    {
      para(inteiro j = 0; j < 3; j++)//coluna
      {
        escreva(matriz[i][j])
      }
      escreva("\n")
    }

    escreva("Quantidade de valores alterados: ", valoresAlterados)
  }

  funcao inteiro trocaNegativos(inteiro m[][])
  {
    inteiro contador = 0
    para(inteiro i = 0; i < 3; i++)
    {
      para(inteiro j = 0; j < 3; j++)
      {
        se(m[i][j] < 0)
        {
          m[i][j] = 0
          contador++
        }
      }
    }
    retorne contador
  }

}
