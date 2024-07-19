# next - move automaticamente para a próxima iteração de um loop

frase_dinheiro = "Eu amo $ de manhã, $ à tarde e $ à noite"

indice_atual = 0
indice_final = frase_dinheiro.length - 1 # 40

while indice_atual <= indice_final # 7 <= 40
  if frase_dinheiro[indice_atual] != "$" # false
    indice_atual += 1
    next
  end

  puts "Encontrado $ no índice #{indice_atual}"
  indice_atual += 1
end