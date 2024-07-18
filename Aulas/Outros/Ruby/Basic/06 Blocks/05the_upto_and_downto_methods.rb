#5.upto(10) { |current| puts "The loop is now on #{current}"}

#1.upto(10) { |current| puts "O loop está em #{current}"}

#6.downto(1) { |current| puts "O loop está em #{current}"}

99.downto(1) do |number|
  puts "#{number} garaffas de cerveja na parede, #{number} garrafas de cereveja"
  puts "Derruba uma e o que acontece?"
  puts "#{number - 1} garrafas de ceerveja na parede"
end

