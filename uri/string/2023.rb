names = []

while line = gets
  names << line.chomp
end

puts names.sort! { |a, b| a.downcase <=> b.downcase }.last
