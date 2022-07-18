childs = []

while line = gets.chomp
  childs << line.chomp
end

puts childs.sort.last
