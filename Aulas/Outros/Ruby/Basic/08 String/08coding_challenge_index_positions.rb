# Defina um método mesma_primeira_e_ultima_letra que aceite uma string.
# O método deve retornar true se o primeiro e o último caractere forem iguais,
# e false caso contrário.
# Assuma que a string sempre terá 1 ou mais caracteres.
#
# Exemplos:
# => indica o valor esperado de retorno
#
# mesma_primeira_e_ultima_letra("roedor")   => true
# mesma_primeira_e_ultima_letra("Roedor")   => false
# mesma_primeira_e_ultima_letra("relógio")    => false
# mesma_primeira_e_ultima_letra("q")          => true

def mesma_primeira_e_ultima_letra(texto)
  texto[0] == texto[-1]
end

puts mesma_primeira_e_ultima_letra("roedor")
puts mesma_primeira_e_ultima_letra("Roedor")
puts mesma_primeira_e_ultima_letra("relógio")
puts mesma_primeira_e_ultima_letra("q")

puts

# Defina um método soma_de_tres_numeros que aceite uma string de 3 caracteres.
# O método deve calcular a soma dos dígitos da string.
# DICA: Você terá que descobrir uma maneira de converter os
# dígitos em forma de string para inteiros.
#
# Exemplos:
# => indica o valor esperado de retorno
#
# soma_de_tres_numeros("123")   => 6
# soma_de_tres_numeros("567")   => 18
# soma_de_tres_numeros("444")   => 12
# soma_de_tres_numeros("000")   => 0

def soma_de_tres_numeros(texto)
  texto[0].to_i + texto[1].to_i + texto[2].to_i
end

puts soma_de_tres_numeros("123")
puts soma_de_tres_numeros("567")
puts soma_de_tres_numeros("444")
puts soma_de_tres_numeros("000")