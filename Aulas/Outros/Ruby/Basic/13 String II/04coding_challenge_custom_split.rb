# Defina um método dividir_personalizado que aceite um texto e um delimitador.
# O método deve retornar um array com os segmentos do texto
# após serem divididos pelo delimitador. Sua solução NÃO deve
# usar o método split embutido de uma string. Suponha que o delimitador
# nunca será uma string vazia.
#
# Exemplos:
# => indica o valor esperado de retorno

def dividir_personalizado(texto, delimitador)
  resultados = []
  atual = ""

  texto.each_char do |caractere|
    if caractere == delimitador
      resultados << atual if atual.length > 0
      atual = ""
    else
      atual << caractere
    end
  end

  resultados << atual if atual.length > 0
  resultados
end

p dividir_personalizado("Oi, meu nome é Leonardo", " ") # => ["Oi,", "meu", "nome", "é", "Boris"]
p dividir_personalizado("ravióli é delicioso", "i")  # => ["rav", "ól", " ", "é del", "c", "oso"]
p dividir_personalizado("Zebra", "j")                # => ["Zebra"]
p dividir_personalizado(" olá", " ")                 # => ["olá"]