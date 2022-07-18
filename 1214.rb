# frozen_string_literal: true

require 'byebug'
line = gets.chomp.to_i

(1..line).each do |_i|
  numbers = gets.split
  numbers.shift
  numbers = numbers.map(&:to_f)
  sum = numbers.reduce(:+) / numbers.size

  new_numbers = numbers.select { |number| number > sum }

  puts "#{format('%.3f', (new_numbers.size * 100).to_f / numbers.size)}%"
end
