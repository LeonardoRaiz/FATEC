# map/collect - cria um novo array realizando uma operação consistente
# em todos os elementos de um array original

aves = ["águia", "pardal", "pombo", "falcão", "pinguim"]

# comprimentos = []
# aves.each { |ave| comprimentos << ave.length }
# p comprimentos

comprimentos = aves.map { |ave| ave.length }
p comprimentos

comprimentos = aves.collect { |ave| ave.length }
p comprimentos

aves_maiusculas = aves.map { |ave| ave.upcase }
p aves_maiusculas