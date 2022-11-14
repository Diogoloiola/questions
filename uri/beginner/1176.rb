numbers = []
numbers[0] = 0
numbers[1] = 1

(2..60).each do |i|
  numbers[i] = numbers[i - 1] + numbers[i - 2]
end

n = gets.chomp.to_i

n.times do
  option = gets.chomp.to_i
  puts "Fib(#{option}) = #{numbers[option]}"
end
