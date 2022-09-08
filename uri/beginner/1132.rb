n1 = gets.chomp.to_i
n2 = gets.chomp.to_i

init = 0
end_range = 0

if n1 > n2
  init = n2
  end_range = n1
else
  init = n1
  end_range = n2
end

sum = 0

(init..end_range).each do |number|
  sum += number unless (number % 13).zero?
end

puts sum
