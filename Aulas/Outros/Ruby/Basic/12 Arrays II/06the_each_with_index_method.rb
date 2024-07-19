# each_with_index
cores = ["Vermelho", "Azul", "Verde", "Amarelo"]

cores.each_with_index { |cor, indice| puts "O valor para a posição de índice #{indice} é #{cor}!" }

[5, 10, 15].each_with_index do |numero, indice|
  puts "O número é #{numero} e o índice é #{indice}"
  puts "O produto dos dois é #{numero * indice}"
end