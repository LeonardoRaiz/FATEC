a = [1, 2, 3]
b = a.dup
c = a.clone

p a.object_id
p b.object_id
p c.object_id

a.push(4)
p a
p b
p c

puts

d = "Shop Rite"
e = d.clone

d.upcase!
p d
p e