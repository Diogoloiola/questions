counter = 1
flag = 0

loop do

number = gets.chomp

break if number == '0'

expression = gets.chomp


if counter >=1
  puts ''
else
  counter += 1
end

puts "Teste #{counter += 1}"
puts eval expression	

end
