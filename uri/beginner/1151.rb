option = gets.chomp.to_i

numbers = []
numbers[0] = 0
numbers[1] = 1

(2..option - 1).each do |i|
  numbers[i] = numbers[i - 1] + numbers[i - 2]
end

puts numbers.join(' ')
