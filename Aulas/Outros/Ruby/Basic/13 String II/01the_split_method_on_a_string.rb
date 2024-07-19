frases = "Oi, meu nome é Boris. Meu hobby favorito é programar!"

p frases.split
p frases.split(" ")
p frases.split(".")
p frases.split("o")

puts

frases.split(" ").each do |palavra|
  puts "Atualmente, estou na palavra #{palavra}!"
  puts "Ela tem #{palavra.length} caracteres!"
end