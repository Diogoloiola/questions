number = gets.chomp.to_i

hours = number / 3600
minutes = (number % 3600) / 60
seconds = (number % 3600) % 60

puts "#{hours}:#{minutes}:#{seconds}"
