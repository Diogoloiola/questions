require 'byebug'
sum = 0
count = 0
loop do
  age = gets.to_i

  break if age.negative?

  count += 1
  sum += age
end

puts format('%.2f', sum.to_f / count)
