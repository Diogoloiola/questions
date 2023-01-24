require 'byebug'
gets.chomp

numbers = gets.chomp.split.map(&:to_i)

i = 0

counter = 0

max = -1

while i < numbers.size
  if numbers[i] == numbers[i + 1]
    counter += 1
  else
    max = counter if counter > max
    counter = 0
  end

  i += 1
end

puts max + 1
