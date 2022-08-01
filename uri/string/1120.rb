loop do
  n1, n2 = gets.chomp.split

  break if n1 == '0' && n2 == '0'

  number = n2.delete(n1)

  puts number.empty? ? 0 : number.to_i
end
