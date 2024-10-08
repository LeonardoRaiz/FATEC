# Defina um método indice_personalizado que aceite uma string e um termo de busca.
# O método deve retornar a posição do primeiro índice do
# termo de busca dentro da string. Se o termo de busca não existir,
# retorne nil. Não use o método embutido index na sua solução.

def indice_personalizado(texto, termo_de_busca)
  comprimento_termo = termo_de_busca.length # 1

  texto.chars.each_with_index do |caractere, indice|
    sequencia = texto[indice, comprimento_termo]
    return indice if sequencia == termo_de_busca
  end

  nil
end

p indice_personalizado("Eu sou muito bonito", "E")  # 0
p indice_personalizado("Eu sou muito bonito", "e")  # nil
p indice_personalizado("Eu sou muito bonito", "Z")  # nil
p indice_personalizado("Eu sou muito bonito", "sou") # 3
p indice_personalizado("Eu sou muito bonito", "ma")  # nil