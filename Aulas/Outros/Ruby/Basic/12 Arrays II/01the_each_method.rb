# bloco - trecho de código executável que anexamos a uma invocação de método
3.times { |numero| puts "Estou atualmente iterando no loop número #{numero}" }

4.times do |numero|
  quadrado = numero * numero
  puts "O número atual é #{numero} e seu quadrado é #{quadrado}."
end

puts

nomes = ["bo", "moe", "joe"]
nomes.each { |nome| puts nome.upcase }

[1, 2, 3, 4, 5].each do |numero_atual|
  calculo = numero_atual * numero_atual
  puts "O quadrado de #{numero_atual} é #{calculo}."
end