numero = 10000
verificado = true

if numero > 5000 && verificado
  puts "Esse é um número enorme!"
end

puts "Esse é um número enorme!" if numero > 5000 && verificado

outro_numero = 8

unless outro_numero > 10 # execute se falso
puts "outro_numero NÃO é maior que 10"
end

puts "outro_numero NÃO é maior que 10" unless outro_numero > 10