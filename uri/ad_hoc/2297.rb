require 'byebug'

counter = 1
loop do
  line = gets.chomp.to_i

  break if line.zero?

  beto = 5
  aldo = 5

  (1..line).each do
    n, m = gets.chomp.split.map(&:to_i)
    aldo += n
    beto += m
  end
  puts "Teste #{counter}"
  if beto > aldo
    puts 'Beto'
  else
    puts 'Aldo'
  end
  puts ''
  counter += 1
end
