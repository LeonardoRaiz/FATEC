# puts "palha".reverse

# def reverse(texto)
#   primeiro_indice = 0
#   ultimo_indice = texto.length - 1 # 4
#   texto_invertido = "" # w

#   while ultimo_indice >= primeiro_indice # 0 >= 0
#     texto_invertido += texto[ultimo_indice] # warts
#     ultimo_indice -= 1
#   end

#   texto_invertido
# end

def inverter(texto) # stra
  return texto if texto.length == 1
  ultimo_caractere = texto[-1] # a
  restante = texto[0, texto.length - 1] # str
  ultimo_caractere + inverter(restante) # w + inverter(stra)
end

# inverter(palha)
#  ahlap
#
#
#

puts inverter("palha")