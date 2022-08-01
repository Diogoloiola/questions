require 'byebug'
line = gets.chomp.to_i

numbers = {}

for i in 1..line do
  number = gets.chomp
  if numbers[number].nil?
    numbers[number] = 1
  else
    numbers[number] += 1
  end
end
numbers.sort_by{ |word| word[0].to_i }.each do |number|
  puts "#{number[0]} aparece #{number[1]} vez(es)"
end
