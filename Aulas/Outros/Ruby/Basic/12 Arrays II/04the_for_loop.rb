# para cada elemento na estrutura de dados iterável

# for numero em [1, 2, 3]
#   puts numero
# end

[1, 2, 3].each { |numero| puts numero }

# for valor em 1..10
#   puts "Uhul, estamos iterando aqui!"
#   puts "Estamos atualmente no #{valor}"
# end

# puts valor

(1..10).each do |numero_intervalo|
  puts "Uhul, estamos iterando aqui!"
  puts "Estamos atualmente no #{numero_intervalo}"
end