# index - encontrar o índice da primeira ocorrência de uma substring

fato = "Eu sou muito bonito"

p fato.index("E")
p fato.index("e")
p fato.index("Z")
p fato.index("sou")
p fato.index("bonito")

puts

p fato.index("s", 3)
p fato.index("e", 6)
p fato.index("e", 7)

puts

p fato.rindex("e")