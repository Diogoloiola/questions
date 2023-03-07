line = gets.chomp.to_i

array = []

(1..line).each do
  array << gets.chomp.to_i
end

puts array.uniq.count
