n1 = gets.chomp.to_i
n2 = gets.chomp.to_i

begin_range = 0
end_range = 0

if n1 > n2
  begin_range = n2 + 1
  end_range = n1 - 1
else
  begin_range = n1 + 1
  end_range = n2 - 1
end

(begin_range..end_range).each do |i|
  puts i if (i % 5) == 3 || (i % 5) == 2
end
