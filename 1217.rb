require 'byebug'

line = gets.chomp.to_i

days = []
sum_price = 0.0
(1..line).each do
  value = gets.chomp.to_f
  fruits = gets.chomp.split
  days << fruits.size
  sum_price += value
end

days.each_with_index do |day, index|
  puts "day #{index + 1}: #{day} kg"
end

puts "#{format('%.2f', days.sum.to_f / line)} kg by day"
puts "R$ #{format('%.2f', sum_price / line)} by day"
