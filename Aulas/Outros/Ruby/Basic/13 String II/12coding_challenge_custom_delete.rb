# Defina um método excluir_personalizado que aceite uma string de texto e
# uma string de caracteres a serem excluídos. O método deve construir
# uma nova string consistindo apenas de caracteres que NÃO estão entre
# os caracteres a serem excluídos. Não use o método embutido
# delete na sua solução.

def excluir_personalizado(texto, caracteres_para_excluir)
  resultado = ""

  texto.each_char do |caractere|
    unless caracteres_para_excluir.include?(caractere)
      resultado << caractere
    end
  end

  resultado
end

p excluir_personalizado("queijo cottage", "q")     # "ueijo cottage"
p excluir_personalizado("queijo cottage", "e")     # "quijo cottag"
p excluir_personalizado("queijo cottage", "qe")    # "uijo cottag"
p excluir_personalizado("queijo cottage", "eq")    # "uijo cottag"