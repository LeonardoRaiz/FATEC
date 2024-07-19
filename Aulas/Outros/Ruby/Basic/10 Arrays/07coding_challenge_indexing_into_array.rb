# Defina um método primeiro_e_ultimo que aceite um array de strings.
# O método deve concatenar o primeiro elemento e o último elemento
# e retornar o resultado.
# Suponha que a lista sempre terá 1 ou mais elementos.
#
# Exemplos
# => indica o valor esperado de retorno
# primeiro_e_ultimo(["a", "b", "c"])        => "ac"
# primeiro_e_ultimo(["bob", "tom", "rob"])  => "bobrob"
# primeiro_e_ultimo(["a"])                  => "aa"

def primeiro_e_ultimo(elementos)
  elementos[0] + elementos[-1]
end

puts primeiro_e_ultimo(["a", "b", "c"])
puts primeiro_e_ultimo(["bob", "tom", "rob"])
puts primeiro_e_ultimo(["a"])

# Defina um método produto_dos_indices_pares que aceite um
# array de números. O array sempre terá 6 elementos no total.
# O método deve retornar o produto (total multiplicado) de
# todos os números em um índice par (0, 2, 4).
#
# Exemplos
# => indica o valor esperado de retorno
# produto_dos_indices_pares([1, 2, 3, 4, 5, 6])    =>  15
# produto_dos_indices_pares([3, 4, 3, 5, 3, 6])    =>  27

def produto_dos_indices_pares(numeros)
  numeros[0] * numeros[2] * numeros[4]
end

puts produto_dos_indices_pares([1, 2, 3, 4, 5, 6])
puts produto_dos_indices_pares([3, 4, 3, 5, 3, 6])

# Defina um método primeira_letra_da_ultima_string que aceite um
# array de strings. Deve retornar um caractere: a primeira
# letra da última string no array.
# Suponha que o array sempre terá pelo menos uma string.
#
# Exemplos
# => indica o valor esperado de retorno
# primeira_letra_da_ultima_string(["gato", "cachorro", "zebra"]) => "z"
# primeira_letra_da_ultima_string(["nonsense"])                  => "n"

def primeira_letra_da_ultima_string(elementos)
  elementos[-1][0]
end

puts primeira_letra_da_ultima_string(["gato", "cachorro", "zebra"])
puts primeira_letra_da_ultima_string(["nonsense"])

