# frozen_string_literal: true
require 'byebug'
def factorial(number)
  counter = 1
  (1..number).each { |i| counter *= i }
  counter
end

loop do
  number = gets.strip

  break if number == '0'

  acum = 0
  j = number.size
  (0..number.size - 1).each do |i|
    acum += number[i].to_i * factorial(j)
    j -= 1
  end
  puts acum
end
