values = []

100.times.each do
  values << gets.chomp.to_i 
end

max = values.max

puts max

puts values.index(max) + 1
