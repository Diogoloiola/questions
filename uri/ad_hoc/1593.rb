line = gets.chomp.to_i

(1..line).each do
  number = gets.chomp.to_i

  puts number.to_s(2).count('1')
end
