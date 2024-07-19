animais = ["Leão", "Zebra", "Babuíno", "Guepardo"]

i = 0

while i < animais.length # 4 < 4
  puts "O índice é #{i} e o animal é #{animais[i]}"
  i += 1
end

puts

i = 0

until i == animais.length # 4 == 4
puts "O índice é #{i} e o animal é #{animais[i]}"
i += 1
end