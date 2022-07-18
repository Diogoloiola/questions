number = gets.chomp
number = number[0..number.size - 2].to_i(2)

message = (number % 131071).zero? ? 'YES' : 'NO'

puts message
