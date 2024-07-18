def avalie_meu_alimento(alimento)
  # if alimento == "Bife"
  # elsif alimento == "Sushi"
  # elsif alimento == "Burritos"
  # end

  case alimento
  when "Bife"
    "Delicioso. Passe o molho de bife!"
  when "Sushi"
    "Incrível! Minha comida favorita!"
  when "Tacos", "Burritos", "Quesadillas"
    "Queijo e farto! A combinação perfeita!"
  when "Tofu", "Couve de Bruxelas"
    "Nojento! Eca!"
  else
    "Não sei sobre esse item alimentício!"
  end
end

puts avalie_meu_alimento("Bife")
puts avalie_meu_alimento("Sushi")
puts avalie_meu_alimento("Burritos")
puts avalie_meu_alimento("Quesadillas")
puts avalie_meu_alimento("Iogurte")