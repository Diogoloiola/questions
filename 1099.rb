def sum(begin_list, end_list)
  acumulator = 0
  (begin_list..end_list).each do |number|
    acumulator += number if (number % 2).odd?
  end
  acumulator
end

line = gets.to_i

(1..line).each do
  n1, n2 = gets.split.map(&:to_i)
  if n1 > n2
    puts sum(n2 + 1, n1 - 1)
  else
    puts sum(n1 + 1, n2 - 1)
  end
end
