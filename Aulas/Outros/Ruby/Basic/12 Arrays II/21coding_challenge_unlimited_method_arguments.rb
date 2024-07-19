# Defina um método soma_dos_tamanhos_das_strings que aceite
# qualquer número de strings. O método deve retornar a soma
# dos comprimentos das strings.
#
# Exemplos:
# => indica o valor esperado de retorno

def soma_dos_tamanhos_das_strings(*elementos)
  total = 0
  elementos.each { |elemento| total += elemento.length }
  total
end

p soma_dos_tamanhos_das_strings("bob", "ama", "hambúrgueres")     # => 15
p soma_dos_tamanhos_das_strings("programar", "é", "muito", "divertido")   # => 23
p soma_dos_tamanhos_das_strings()                              # => 0