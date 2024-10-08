# Defina um método palavra_mais_longa que aceite uma string.
# O método deve retornar a palavra mais longa da string.
# Se duas palavras tiverem o mesmo comprimento máximo, o método deve
# retornar a última palavra da frase com esse comprimento.
# Você pode assumir:
#  - Cada duas palavras são separadas por um único espaço
#  - A string não contém símbolos ou caracteres especiais
#
# Exemplos:
# => indica o valor esperado de retorno

def palavra_mais_longa(frase)
  palavras = frase.split(" ")
  palavra_mais_longa_da_frase = palavras[0]

  palavras.each do |palavra|
    if palavra.length >= palavra_mais_longa_da_frase.length
      palavra_mais_longa_da_frase = palavra
    end
  end

  palavra_mais_longa_da_frase
end

p palavra_mais_longa("Bobby ama cangurus grandes e assustadores") # "assustadores"
p palavra_mais_longa("Ruby é minha linguagem favorita")           # "linguagem"
p palavra_mais_longa("Olá")                                       # "Olá"