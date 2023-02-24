line = gets.chomp.to_i

(1..line).each do
  string = gets.chomp

  puts format('%.2f', string.size * 0.01)
end