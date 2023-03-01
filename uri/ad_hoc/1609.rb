line = gets.chomp.to_i

(1..line).each do
  gets
  numbers = gets.chomp.split.map(&:to_i)

  puts numbers.uniq.size
end
