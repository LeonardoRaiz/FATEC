# a menos que
# execute se uma condição for falsa
# Definição: "exceto se" --> "execute este código exceto se uma condição for verdadeira"

senha = "sem sentido"

# a senha real é "bigodes"

# if senha != "bigodes"
#   puts "Senha incorreta"
# else
#   puts "Bem-vindo ao sistema"
# end

unless senha == "bigodes" # execute a seção de código se a condição for falsa
puts "Senha incorreta"
  #Este código será executado a menos que a condição acima seja válida
end

# Verifique se a senha do usuário NÃO inclui a letra "a"
# include?

unless senha.include?("a") # execute se falso
puts "Isso será executado A MENOS QUE a senha inclua 'a'"
end