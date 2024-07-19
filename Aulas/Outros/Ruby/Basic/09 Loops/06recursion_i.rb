# recursão é quando um método chama a si mesmo
# caso base - condição que diz à recursão para parar

# fatoriais
# 5! = 5 * 4 * 3 * 2 * 1 = 120

def fatorial(numero)
  return 1 if numero == 1
  numero * fatorial(numero - 1)
end

puts fatorial(5)

# Primeira camada:  5 * 24 = 120


# 5 * 4!
#     4 * 3!
#         3 * 2!
#             2 * 1!

# 4! = 4 * 3 * 2 * 1     = 24
# 3! = 3 * 2 * 1         = 6
# 2! = 2 * 1             = 2
# 1! = 1                 = 1