require 'byebug'
n = gets.chomp.to_f

index = 0

while index <= 99
  puts "N[#{index}] = #{format('%.4f', n)}"

  index += 1

  n /= 2
end
