# freeze - tornar imutável

nome = "Leonardo".freeze
hobbies = ["Programar", "Sushi"].freeze

# nome << " o Gênio"
# hobbies << "Vencer"
# nome.upcase!

nome_duplicado = nome.dup
nome_duplicado << " o Gênio"
p nome_duplicado

hobbies_duplicados = hobbies.dup
hobbies_duplicados << "Vencer"
p hobbies_duplicados

nome_clonado = nome.clone
# nome_clonado << " o Gênio"

hobbies_clonados = hobbies.clone
# hobbies_clonados << "Vencer"