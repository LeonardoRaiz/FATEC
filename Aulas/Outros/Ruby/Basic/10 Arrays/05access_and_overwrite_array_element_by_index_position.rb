frutas = ["Maçã", "Laranja", "Uva", "Banana"]

puts frutas[0]
puts frutas[1]
puts frutas[3]
p frutas[100]

puts

puts frutas[-1]
puts frutas[-2]
puts frutas[-4]
p frutas[-10]

puts

puts frutas.slice(0)
p frutas.slice(10)
p frutas.slice(-3)

puts

puts frutas.[](0)

puts

frutas[1] = "Melancia"
p frutas

frutas[4] = "Framboesa"
p frutas

frutas[10] = "Kiwi"
p frutas