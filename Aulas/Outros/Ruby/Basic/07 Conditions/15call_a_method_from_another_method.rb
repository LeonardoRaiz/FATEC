def adicionar(a, b)
  a + b
end

def subtrair(a, b)
  a - b
end

def multiplicar(a, b)
  a * b
end

def calculadora(a, b, operacao)
  if operacao == "adicionar"
    adicionar(a, b)
  elsif operacao == "subtrair"
    subtrair(a, b)
  elsif operacao == "multiplicar"
    multiplicar(a, b)
  else
    "Essa não é uma operação matemática disponível, gênio!"
  end
end

puts calculadora(3, 5, "adicionar")
puts calculadora(10, 20, "subtrair")
puts calculadora(8, 7, "multiplicar")
puts calculadora(10, 4, "blah blah blah")