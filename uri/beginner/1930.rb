require 'byebug'

numbers = gets.chomp.split.map(&:to_i)

numbers = numbers.map.with_index do |number, index|
  if index < 3
    number - 1
  else
    number
  end
end

puts numbers.sum
