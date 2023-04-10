n = gets.chomp.to_i

(1..n).each do |i|
  numbers = gets.chomp.split.map(&:to_i)

  puts "Case #{i}: #{numbers[numbers.size / 2]}"
end
