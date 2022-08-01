def sum_numbers(number)
  total_sum = 0
  while number.size > 1
    number.each_char do |value|
      total_sum += value.to_i
    end

    number = total_sum.to_s
    total_sum = 0
  end
  number.to_i
end

loop do
  n1, n2 = gets.chomp.split

  break if n1 == '0' && n2 == '0'

  result_n1 = sum_numbers(n1)
  result_n2 = sum_numbers(n2)

  if result_n1 > result_n2
    puts '1'
  elsif result_n2 > result_n1
    puts '2'
  else
    puts '0'
  end
end
