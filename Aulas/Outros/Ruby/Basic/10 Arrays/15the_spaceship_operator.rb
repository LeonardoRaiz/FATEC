# Operador Spaceship <=>
# Retorna -1, 0, 1 ou nil

# Retorna 0 se dois valores são iguais
p 5 <=> 5
p [3, 4, 5] <=> [3, 4, 5]

# Retorna -1 se o valor à esquerda é menor
p 5 <=> 10
p [1, 2, 4] <=> [1, 2, 10]

# Retorna 1 se o valor à esquerda é maior
p 5 <=> 3
p [1, 10, 5] <=> [1, 5, 8]

# Retorna nil se os valores são incomparáveis
p 5 <=> [1, 2, 3]
p [nil, 1, 2] <=> [0, 1, 2]