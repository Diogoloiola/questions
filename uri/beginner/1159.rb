def sum_elements(init, break_point: 5)
  counter = 0
  sum = 0
  loop do
    break if counter == break_point
    next init += 1 unless (init % 2).zero?

    sum += init
    init += 1
    counter += 1
  end
  sum
end

loop do
  line = gets.chomp.to_i

  break if line.zero?

  puts sum_elements(line)
end
