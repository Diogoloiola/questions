gets.chomp
numbers = gets.chomp.split.map(&:to_i)

puts "Menor valor: #{numbers.min}"
puts "Posicao: #{numbers.index(numbers.min)}"
