range, position = gets.chomp.split.map(&:to_i)

names = []

(0..range - 1).each do
  names << gets.chomp
end

puts names.sort[position - 1]
