number = gets.chomp.to_i

year = number / 365
month = (number % 365) / 30
days = (number % 365) % 30

puts "#{year} ano(s)"
puts "#{month} mes(es)"
puts "#{days} dia(s)"
