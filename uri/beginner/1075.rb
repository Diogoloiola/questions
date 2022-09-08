value = gets.chomp.to_i
(1..10_000).each do |number|
  puts number if (number % value) == 2
end
