# Defina um método unir_personalizado que aceite um array de strings
# e um delimitador. O método deve unir os elementos do array
# em uma única string. Deve inserir o delimitador
# entre cada dois elementos subsequentes. Não use o
# método join embutido na sua solução.
#
# Exemplos:
# => indica o valor esperado de retorno

def unir_personalizado(elementos, delimitador)
  resultado = ""
  ultimo_indice = elementos.length - 1

  elementos.each_with_index do |elemento, indice|
    resultado << elemento
    resultado << delimitador if indice != ultimo_indice
    # resultado << delimitador a menos que indice == ultimo_indice
  end

  resultado
end

p unir_personalizado(["vermelho", "verde", "azul"], "!") #=> "vermelho!verde!azul"
p unir_personalizado(["Big", "Mac"], "$$")               #=> "Big$$Mac"
p unir_personalizado([], "$$$")                          #=> ""