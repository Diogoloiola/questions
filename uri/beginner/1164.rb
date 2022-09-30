require 'byebug'
number = gets.to_i

(1..number).each do
  n = gets.to_i
  sum = 0
  (1..n - 1).each do |i|
    sum += i if (n % i).zero?
  end
  message = n == sum ? 'eh perfeito' : 'nao eh perfeito'

  puts "#{n} #{message}"
end
