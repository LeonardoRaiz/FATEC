# FizzBuzz é um problema de programação popular para testar a capacidade
# de um desenvolvedor de pensar logicamente com código.
#
# O problema é simples, mas enganoso.
#
# Defina um método fizzbuzz que aceite um único número.
# O método deve imprimir todos os números de 1 até esse argumento.
#
# Há algumas ressalvas.
# Se o número for divisível por 3, imprima "Fizz" em vez do número.
# Se o número for divisível por 5, imprima "Buzz" em vez do número.
# Se o número for divisível por ambos 3 e 5, imprima "FizzBuzz" em vez do número.
# Se o número não for divisível nem por 3 nem por 5, apenas imprima o número.
#
# Exemplo: fizzbuzz(30) deve imprimir:
#
# 1
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# 8
# Fizz
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
# 17
# Fizz
# 19
# Buzz
# Fizz
# 22
# 23
# Fizz
# Buzz
# 26
# Fizz
# 28
# 29
# FizzBuzz

def fizzbuzz(numero)
  i = 1

  while i <= numero
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end

    i += 1
  end
end

fizzbuzz(30)