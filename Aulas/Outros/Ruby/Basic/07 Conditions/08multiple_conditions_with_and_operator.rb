# &&
# AND

puts "Entre com o usuario"
username = gets.chomp
puts "Entre com a senha"
password = gets.chomp

if username == "rubydev" && password == "topsecret"
  puts "Bem vindo"
else
  puts "Usuario ou senha errado"
end
