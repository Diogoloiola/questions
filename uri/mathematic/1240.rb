line = gets.chomp.to_i

(1..line).each do
  n1, n2 = gets.chomp.split

  next puts 'nao encaixa' if n2.size > n1.size

  start_string = n1.size - n2.size

  if n1.slice(start_string, n1.size).include?(n2)
    puts 'encaixa'
  else
    puts 'nao encaixa'
  end
end
