line = gets.chomp.to_i

(1..line).each do
  n1, n2, n3 = gets.chomp.split.map(&:to_f)

  result = ((n1 * 2) + (n2 * 3) + (n3 * 5)) / 10

  puts format('%.1f', result)
end
