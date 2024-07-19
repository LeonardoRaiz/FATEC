# Defina um método produto_do_numero_e_indice que aceita um array de números.
# O método deve iterar sobre os elementos. Para cada elemento,
# ele deve multiplicar o elemento pela sua posição de índice. Ele deve
# então adicionar esse produto a uma soma acumulada. Retorne a soma final.
# Se o array não tiver elementos, a soma final deve ser 0.
#
# Exemplos:
# => indica o valor esperado de retorno

def produto_do_numero_e_indice(numeros)
  soma = 0
  numeros.each_with_index { |numero, indice| soma += numero * indice }
  soma
end

p produto_do_numero_e_indice([1, 2, 3]) #=> (0 * 1) + (1 * 2) + (2 * 3) => 8
p produto_do_numero_e_indice([])        #=> 0