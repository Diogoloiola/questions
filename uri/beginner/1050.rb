ddd = {
  '61': 'Brasilia',
  '71': 'Salvador',
  '11': 'Sao Paulo',
  '21': 'Rio de Janeiro',
  '32': 'Juiz de Fora',
  '19': 'Campinas',
  '27': 'Vitoria',
  '31': 'Belo Horizonte'
}

option = gets.chomp.to_sym

if ddd[option].nil?
  puts 'DDD nao cadastrado'
else
  puts ddd[option]
end
