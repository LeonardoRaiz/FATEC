cinco = [5, 10, 15, 20, 25, 30, 35, 40]
pares = []

# cinco.each { |valor| puts valor se valor.even? }

cinco.each { |numero| pares.push(numero) if numero.even? }

p cinco
p pares