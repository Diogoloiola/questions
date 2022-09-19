number = gets.chomp.to_i

(1..number).each do
  n1, n2 = gets.chomp.split.map(&:to_f)

  if n2.zero?
    puts 'divisao impossivel'
  else
    puts format('%.1f', (n1 / n2))
  end
end
