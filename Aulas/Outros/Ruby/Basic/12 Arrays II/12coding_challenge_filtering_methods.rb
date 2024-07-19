# Defina um método inverter_todos que aceita um array de strings.
# O método deve retornar um array com todas as strings em ordem invertida.
#
# Exemplos:
# => indica o valor esperado de retorno

def inverter_todos(elementos)
  elementos.collect { |elemento| elemento.reverse }
end

p inverter_todos(["gato", "morcego", "banheira"]) #=> ["otag", "ogebrom", "ariehnab"]
p inverter_todos(["floresta"])                    #=> ["atserolf"]
p inverter_todos([])                              #=> []


# Defina um método palavras_com_letra que aceita um array de strings e uma letra.
# O método deve retornar um array das strings que incluem a letra.
#
# Exemplos:
# => indica o valor esperado de retorno

def palavras_com_letra(elementos, letra)
  elementos.select { |elemento| elemento.include?(letra) }
end

p palavras_com_letra(["gato", "morcego", "banheira"], "a") # => ["gato", "banheira"]
p palavras_com_letra(["gato", "morcego", "banheira"], "u") # => ["banheira"]
p palavras_com_letra(["gato", "morcego", "banheira"], "z") # => []


# Defina um método pares_e_impares que aceita um array de números.
# O método deve segmentar o array em dois arrays.
# O primeiro array deve conter os números pares.
# O segundo array deve conter os números ímpares.
# Retorne um array consistindo dos dois arrays.
#
# Exemplos:
# => indica o valor esperado de retorno

def pares_e_impares(numeros)
  numeros.partition { |numero| numero.even? }
end

p pares_e_impares([1, 2, 3, 4, 5])   # => [[2, 4], [1, 3, 5]]
p pares_e_impares([2, 4, 6, 8])      # => [[2, 4, 6, 8], []]
p pares_e_impares([])                # => [[], []]