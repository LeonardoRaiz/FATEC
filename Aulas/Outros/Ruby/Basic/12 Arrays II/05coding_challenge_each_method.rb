# Defina um método dobrar_elementos que aceita um array de números.
# O método deve retornar um novo array onde cada elemento é
# o dobro do seu valor no array original.
#
# Exemplos:
# => indica o valor esperado de retorno

def dobrar_elementos(valores)
  resultado = []
  valores.each { |valor| resultado.push(valor * 2) }
  resultado
end

p dobrar_elementos([1, 2, 3, 4, 5])         # [2, 4, 6, 8, 10]
p dobrar_elementos([10, 20, 30])            # [20, 40, 60]


# Defina um método extrair_palavras_longas que aceita um array de strings.
# O método deve retornar um novo array apenas com as strings que
# têm mais de 7 caracteres.
#
# Exemplos:
# => indica o valor esperado de retorno

def extrair_palavras_longas(elementos)
  longas = []
  elementos.each { |elemento| longas.push(elemento) if elemento.length > 7 }
  longas
end

p extrair_palavras_longas(["espaguete", "penne", "fettuccine", "ziti"])
#=> ["espaguete", "fettuccine"]
p extrair_palavras_longas(["lasanha", "ravióli", "canelone", "tagliatelle"])
#=> ["canelone", "tagliatelle"]


# Defina um método massas_e_molhos que aceita dois arrays.
# O primeiro array conterá tipos de massas e o segundo conterá molhos.
# O método deve retornar um array consistindo de todas as combinações
# de massas e molhos. Combine cada massa e molho em uma nova string
# (veja o exemplo abaixo). Certifique-se de capitalizar cada massa e molho.
#
# Exemplos:
# => indica o valor esperado de retorno
#

def massas_e_molhos(massas, molhos)
  opcoes = []

  massas.each do |massa|
    molhos.each do |molho|
      combinacao = "#{massa.capitalize} com molho de #{molho.capitalize}"
      opcoes << combinacao
    end
  end

  opcoes
end

p massas_e_molhos(["fettuccine", "espaguete", "penne"], ["alfredo", "bolonhesa", "pesto"])
# => ["Fettuccine com molho de Alfredo", "Fettuccine com molho de Bolonhesa", "Fettuccine com molho de Pesto", "Espaguete com molho de Alfredo", "Espaguete com molho de Bolonhesa", "Espaguete com molho de Pesto", "Penne com molho de Alfredo", "Penne com molho de Bolonhesa", "Penne com molho de Pesto"]