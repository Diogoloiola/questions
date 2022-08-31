n1, n2 = gets.chomp.split.map(&:to_i)

if (n2 % n1).zero? || (n1 % n2).zero?
  puts 'Sao Multiplos'
else
  puts 'Nao sao Multiplos'
end
