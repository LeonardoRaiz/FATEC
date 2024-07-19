# Defina um método tem_mais_de_sete_caracteres que
# aceita um array de strings. Deve retornar um booleano refletindo
# se algum elemento do array tem mais de 7 caracteres.
#
# Exemplos:
# => indica o valor esperado de retorno

def tem_mais_de_sete_caracteres(elementos)
  elementos.any? { |elemento| elemento.length > 7 }
end

p tem_mais_de_sete_caracteres(["ruby", "exercicio", "gato"]) # => true
p tem_mais_de_sete_caracteres(["floresta"])                  # => true
p tem_mais_de_sete_caracteres([])                            # => false


# Defina um método contra_todas_as_probabilidades que aceita um array de números.
# Deve retornar um booleano refletindo se todos os elementos do array
# são pares.
#
# Exemplos:
# => indica o valor esperado de retorno

def contra_todas_as_probabilidades(numeros)
  numeros.all? { |numero| numero.even? }
end

p contra_todas_as_probabilidades([3, 5, 7, 2])  # => false
p contra_todas_as_probabilidades([2, 4, 6])     # => true