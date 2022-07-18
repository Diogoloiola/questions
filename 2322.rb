require 'byebug'
line = gets.to_i

correct_array = (1..line).to_a

response_array = gets.chomp.split.map(&:to_i)

puts (correct_array - response_array).first
