story = "Once upon a time in a land far, far away..."

puts story[5, 4]
p story[0, 5]
puts story[0, story.length]
puts story[-7, 5]

puts

puts story.slice(5, 4)
p story.slice(0, 5)
puts story.slice(0, story.length)
puts story.slice(-7, 5)