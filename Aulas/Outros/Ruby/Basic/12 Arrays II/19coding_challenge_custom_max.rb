# Uma ótima maneira de desenvolver suas habilidades em Ruby é implementar métodos
# integrados na linguagem. Claro, o objetivo é NÃO usar o
# método original em sua solução; em vez disso, crie uma implementação alternativa
# usando outros métodos/abordagens.
#
# Defina um método custom_max que aceite um array.
# O método deve retornar o maior valor no array.
# Se o array estiver vazio, o método deve retornar nil.
# Não use o método max em sua solução!
#
# Exemplos:
# => indica o valor esperado de retorno

def custom_max(elementos)
  return nil if elementos.length == 0

  maximo = elementos[0]

  elementos.each do |elemento|
    if elemento > maximo
      maximo = elemento
    end
  end

  maximo
end

p custom_max([434.12, 723.99, 84.12, 649.92]) # => 723.99
p custom_max([8, 10, 2, 1, 19, 4])            # => 19
p custom_max(["Árvore", "Olmo", "Zebra"])     # => "Zebra"
p custom_max([])                              # => nil