# método any? - verifica se algum elemento do array satisfaz uma condição
# método all? - verifica se todos os elementos do array satisfazem uma condição

esportes = ["futebol", "basquete", "beisebol", "tênis", "golfe"]

p esportes.any? { |esporte| esporte.length == 8 }
p esportes.any? { |esporte| esporte.length == 12 }
p esportes.all? { |esporte| esporte.length < 100 }
p esportes.all? { |esporte| esporte.length < 10 }