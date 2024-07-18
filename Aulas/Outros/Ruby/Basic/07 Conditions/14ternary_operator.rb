# ternário - composto por três partes

if 1 < 2
  puts "Sim, é"
else
  puts "Não, não é"
end

valor = 1 < 2 ? "Sim, é" : "Não, não é"
puts valor

puts "Sim".downcase == "Não" ? "Os dois são iguais" : "Os dois não são iguais"