# Defina um método dividir_em_dois que aceite um array.
# O método deve dividir o array em dois arrays.
# Se o array original tiver um número par de elementos,
# os 2 novos arrays devem ter um número igual de elementos.
# Se o array original tiver um número ímpar de elementos,
# o primeiro novo array deve ter o maior número de elementos.
# Retorne um array consistindo dos dois novos arrays.
#
# Exemplos:
# => indica o valor esperado de retorno
# dividir_em_dois(["A", "B"])                => [["A"], ["B"]]
# dividir_em_dois(["A", "B", "C", "D"])      => [["A", "B"], ["C", "D"]]
# dividir_em_dois(["A", "B", "C"])           => [["A", "B"], ["C"]]
# dividir_em_dois(["A", "B", "C", "D", "E"]) => [["A", "B", "C"], ["D", "E"]]

def dividir_em_dois(valores)
  numero_de_elementos = valores.length          # 5
  ponto_medio = (numero_de_elementos / 2.0).ceil  # 3

  [
    valores.first(ponto_medio),
    valores.last(numero_de_elementos - ponto_medio)
  ]
end

p dividir_em_dois(["A", "B"])
p dividir_em_dois(["A", "B", "C", "D"])
p dividir_em_dois(["A", "B", "C"])
p dividir_em_dois(["A", "B", "C", "D", "E"])