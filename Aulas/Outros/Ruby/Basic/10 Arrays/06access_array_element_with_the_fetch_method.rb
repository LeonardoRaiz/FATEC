airports = ["JFK", "LAX", "Heathrow"]

puts airports.fetch(2)
puts airports.fetch(-2)
# puts airports.fetch(100)

puts airports.fetch(100, "Some Airport")
puts airports.fetch(1, "Some Airport")