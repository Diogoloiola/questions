def sum_elements(init, break_point)
  counter = 0
  sum = 0
  loop do
    break if counter == break_point
    next init += 1 if (init % 2).zero?

    sum += init
    init += 1
    counter += 1
  end
  sum
end

line = gets.chomp.to_i

(1..line).each do
  x, y = gets.chomp.split.map(&:to_i)
  puts sum_elements(x.odd? ? x : x + 1, y)
end
