number = gets.chomp.to_i

if number <= 800
  puts 1
elsif number > 800 && number <= 1400
  puts 2
elsif number > 1400 && number <= 2000
  puts 3
end
