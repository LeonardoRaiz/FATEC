# find/detect - encontrar o primeiro elemento do array que corresponda à condição

palavras = ["dicionário", "geladeira", "ornitorrinco", "micro-ondas"]
p palavras.select { |palavra| palavra.include?("e") }
p palavras.select { |palavra| palavra.include?("z") }
p palavras.find { |palavra| palavra.include?("e") }
p palavras.detect { |palavra| palavra.include?("e") }
p palavras.find { |palavra| palavra.include?("z") }
p palavras.detect { |palavra| palavra.include?("z") }