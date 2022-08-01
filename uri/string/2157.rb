line = gets.chomp.to_i

(1..line).each do
  begin_range, end_range = gets.chomp.split.map(&:to_i)
  string = (begin_range..end_range).to_a.join
  puts "#{string}#{string.reverse}"
end
