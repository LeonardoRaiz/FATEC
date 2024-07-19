camisas = ["listrada", "branca lisa", "xadrez", "banda"]
gravatas = ["de bolinhas", "cor sólida", "chata"]

camisas.each do |camisa|
  gravatas.each do |gravata|
    puts "OPÇÃO: Uma camisa #{camisa} e uma gravata #{gravata}."
  end
end