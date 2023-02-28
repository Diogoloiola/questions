require 'byebug'
def fill_array(n, fib)
  (2..n - 1).each do |index|
    fib[index] = fib[index - 1] + fib[index - 2]
  end
end

fib = []
fib[0] = 1
fib[1] = 1

value = gets.chomp.to_i

fill_array(value, fib)

puts fib[0..value - 1].reverse!.join(' ')
