line = gets.chomp.to_i

(1..line).each do
  fruits = gets.chomp.split.uniq.sort.join(' ')

  puts fruits
end
