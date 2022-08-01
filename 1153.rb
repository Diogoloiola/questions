require 'byebug'
number = gets.chomp.to_i

puts (1..number).inject(:*) || 1
