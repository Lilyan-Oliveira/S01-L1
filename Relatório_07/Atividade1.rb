# Usuário entra com três números
puts 'Digite o primeiro número:'
numero1 = gets.to_f

puts 'Digite o segundo número:'
numero2 = gets.to_f

puts 'Digite o terceiro número:'
numero3 = gets.to_f

# Calcula a média dos três números
media = (numero1 + numero2 + numero3) / 3

# Exibe a média
puts "A média dos três números é: #{media}"
