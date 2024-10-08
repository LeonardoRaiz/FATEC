# Defina um método contar_personalizado que aceite uma string e uma string
# de caracteres de busca. O método deve contar quantas vezes os
# caracteres de busca aparecem na string original. Não use o
# método embutido count na sua solução.
#
# Exemplos:
# => indica o valor esperado de retorno

def contar_personalizado(texto, caracteres_busca)
  contador = 0
  texto.each_char { |caractere| contador += 1 if caracteres_busca.include?(caractere) }
  contador
end

p contar_personalizado("Olá Mundo", "l")     #=> 1
p contar_personalizado("Olá Mundo", "O")     #=> 1
p contar_personalizado("Olá Mundo", "z")     #=> 0
p contar_personalizado("Olá Mundo", "lo")    #=> 2
p contar_personalizado("Olá Mundo", "ol")    #=> 2