require 'byebug'
salt, size = gets.chomp.split.map(&:to_i)

numbers = gets.chomp.split.map(&:to_i)

results = []

(0..numbers.size - 1).each do |index|
  break if (numbers.size - 1) == index

  result = numbers[index] - numbers[index + 1]

  results << if result.negative?
               result * - 1
             else
               result
             end
end

flag = results.find { |n| n > salt }

if flag.nil?
  puts 'YOU WIN'
else
  puts 'GAME OVER'
end
