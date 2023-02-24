n = gets.chomp.to_i

value_1 = ((1 + Math.sqrt(5)) / 2)**n
value_2 = ((1 - Math.sqrt(5)) / 2)**n

puts format('%.1f', ((value_1 - value_2) / Math.sqrt(5)))
