# | Dia da Semana | Hora do Dia | Refeição          |
# |---------------|-------------|-------------------|
# | dia de semana | manhã       | Cereal            |
# | dia de semana | noite       | Nuggets de frango |
# | fim de semana | manhã       | Torrada Francesa  |
# | fim de semana | noite       | Bife              |

def plano_de_refeicao(dia_da_semana, hora_do_dia)
  if dia_da_semana == "dia de semana"
    if hora_do_dia == "manhã"
      "Cereal"
    elsif hora_do_dia == "noite"
      "Nuggets de frango"
    end
  elsif dia_da_semana == "fim de semana"
    if hora_do_dia == "manhã"
      "Torrada Francesa"
    elsif hora_do_dia == "noite"
      "Bife"
    end
  end
end

puts plano_de_refeicao("dia de semana", "manhã")
puts plano_de_refeicao("dia de semana", "noite")
puts plano_de_refeicao("fim de semana", "noite")