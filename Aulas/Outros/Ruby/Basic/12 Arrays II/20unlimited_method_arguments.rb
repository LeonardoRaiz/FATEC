def somador(a, b, *numeros, c, d)
  p numeros
  soma = 0
  numeros.each { |numero| soma += numero }
  soma
end

p somador(1, 2, 3, 4)     # a = 1, b = 2, numeros = [], c = 3, d = 4
p somador(1, 2, 3, 4, 5)  # a = 1, b = 2, numeros = [3], c = 4, d = 5
p somador(1, 2, 3, 4, 5, 6) # a = 1, b = 2, numeros = [3, 4], c = 5, d = 6