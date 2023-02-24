require 'byebug'

gets
numbers = gets.chomp.split.map(&:to_i)

two = 0
three = 0
four = 0
five = 0

numbers.each do |number|
  two += 1 if (number % 2).zero?

  three += 1 if (number % 3).zero?

  four += 1 if (number % 4).zero?

  five += 1 if (number % 5).zero?
end

puts "#{two} Multiplo(s) de 2"
puts "#{three} Multiplo(s) de 3"
puts "#{four} Multiplo(s) de 4"
puts "#{five} Multiplo(s) de 5"
