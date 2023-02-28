states = %w[roraima acre amapa amazonas para rondonia tocantins]

state = gets.chomp

if states.include? state
  puts 'Regiao Norte'
else
  puts 'Outra regiao'
end
