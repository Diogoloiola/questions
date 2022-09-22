loop do
  number = gets.chomp.to_i

  break if number.zero?

  puts (1..number).to_a.join(' ')
end