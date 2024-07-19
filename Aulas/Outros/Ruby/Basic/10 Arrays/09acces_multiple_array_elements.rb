canais_tv = ["CBS", "UPN", "CW", "FOX", "NBC", "ESPN" ]

p canais_tv.values_at(0)
p canais_tv.values_at(0, 4)
p canais_tv.values_at(1, 3, 5)

puts

p canais_tv.values_at(1, -1)
p canais_tv.values_at(-1, 1)

puts

p canais_tv.values_at(3, 3)
p canais_tv.values_at(5, -1)

puts

p canais_tv.values_at(0, 1, 10)
p canais_tv.values_at(0, 1, 10, -100)
