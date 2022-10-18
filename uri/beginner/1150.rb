x = gets.chomp.to_i

z = nil
loop do
  z = gets.chomp.to_i
  break if z > x
end

sum = x
counter = 0

loop do
  x += 1

  break if sum > z

  sum += x
  counter += 1
end

puts counter + 1
