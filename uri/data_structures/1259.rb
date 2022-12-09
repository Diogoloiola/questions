line = gets.chomp.to_i

odd = [] # impar
even = [] # par

(1..line).each do
  number = gets.chomp.to_i

  odd << number if number.odd?
  even << number if number.even?
end

even.sort.each do |n|
  puts n
end

odd.sort.reverse_each do |n|
  puts n
end
