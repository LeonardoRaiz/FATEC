# next - move automaticamente para a próxima iteração de um loop
# break - termina o loop completamente

frase_dinheiro = "Eu amo $ de manhã, $ à tarde e $ à noite"

indice_atual = 0
indice_final = frase_dinheiro.length - 1
primeiro_indice_dinheiro = nil

while indice_atual <= indice_final
  if frase_dinheiro[indice_atual] == "$"
    primeiro_indice_dinheiro = indice_atual
    break
  end

  indice_atual += 1
end

puts primeiro_indice_dinheiro