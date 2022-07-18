values = 0.0
counter = 0
while line = gets
  number = gets.chomp.to_f
  values += number.to_f
  counter += 1
end

puts format('%.1f', values / counter).to_s
