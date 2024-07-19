# partition - dividir um array em dois arrays com base em uma condição de correspondência/não correspondência

alimentos = ["Bife", "Vegetais", "Hambúrguer de Bife", "Couve", "Tofu", "Bifes de Atum"]

# bons - alimentos que incluem a palavra "Bife"
# ruins - alimentos que não incluem a palavra "Bife"

# bons_alimentos = alimentos.select { |alimento| alimento.include?("Bife") }
# ruins_alimentos = alimentos.reject { |alimento| alimento.include?("Bife") }
# p bons_alimentos
# p ruins_alimentos

bons_alimentos, ruins_alimentos = alimentos.partition { |alimento| alimento.include?("Bife") }
p bons_alimentos
p ruins_alimentos