# Defina um método tres_primeiros_caracteres que aceite uma string.
# O método deve retornar os 3 primeiros caracteres da string.
#
# Exemplos:
# => indica o valor esperado de retorno
#
# tres_primeiros_caracteres("dinastia")   => "din"
# tres_primeiros_caracteres("império")    => "imp"

def tres_primeiros_caracteres(texto)
  texto.slice(0, 3)
end

puts tres_primeiros_caracteres("dinastia")
puts tres_primeiros_caracteres("império")

# Defina um método cinco_do_fim que aceite uma string.
# O método deve retornar os últimos 5 caracteres da string.
#
# Exemplos:
# => indica o valor esperado de retorno
#
# cinco_do_fim("dinastia")   => "astia"
# cinco_do_fim("rinoceronte") => "ronte"

def cinco_do_fim(texto)
  texto.slice(-5, 5)
end

puts cinco_do_fim("dinastia")
puts cinco_do_fim("rinoceronte")