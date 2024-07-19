# Defina um método palavra_longa que aceite uma string.
# O método deve retornar um booleano que reflete se a string
# tem mais de 7 caracteres.
#
# Exemplos:
# => indica o valor esperado de retorno
#
# palavra_longa("Ruby")           => false
# palavra_longa("magnificent")    => true

def palavra_longa(texto)
  texto.length > 7
end

puts palavra_longa("Ruby")
puts palavra_longa("magnificent")

puts

# Defina um método primeiro_maior_que_segundo que aceite dois argumentos de string.
# O método deve retornar true se a primeira string for maior que a segunda
# e false caso contrário (incluindo se forem iguais em comprimento).
#
# Exemplos:
# => indica o valor esperado de retorno
#
# primeiro_maior_que_segundo("Python", "Ruby")     => true
# primeiro_maior_que_segundo("gato", "rato")       => false
# primeiro_maior_que_segundo("Steven", "Seagal")   => false

def primeiro_maior_que_segundo(primeiro, segundo)
  primeiro.length > segundo.length
end

puts primeiro_maior_que_segundo("Python", "Ruby")
puts primeiro_maior_que_segundo("gato", "rato")
puts primeiro_maior_que_segundo("Steven", "Seagal")