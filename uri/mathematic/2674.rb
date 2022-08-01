# frozen_string_literal: true
require 'byebug'

def prime?(number)
  return false if [1, 0].include?(number)

  (2..Math.sqrt(number)).each do |n|
    return false if (number % n).zero?
  end
  true
end

while number = gets
  count = 0

  if prime?(number.to_i)
    number.each_char do |c|
      count += 1 if prime?(c.to_i)
    end
    if count == number.strip.size
      puts 'Super'
    else
      puts 'Primo'
    end
  else
    puts 'Nada'
  end
end
