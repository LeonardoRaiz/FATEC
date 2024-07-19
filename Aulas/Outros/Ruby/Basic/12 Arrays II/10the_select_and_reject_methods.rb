# select - filtrar array para elementos que satisfazem uma condição
# reject - filtrar array para elementos que não satisfazem uma condição

palavras = ["racecar", "selfless", "sentences", "level"]

# palíndromo - uma palavra que é a mesma de trás para frente
palindromos = palavras.select { |palavra| palavra == palavra.reverse }
p palindromos

animais = ["guepardo", "gato", "leão", "elefante", "cachorro", "vaca"]
# Se o bloco retornar true, Ruby REJEITARÁ esse elemento (excluí-lo)
# Se o bloco retornar false, Ruby INCLUIRÁ esse elemento
p animais.reject { |animal| animal.include?("g") }