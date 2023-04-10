string = gets.chomp

count = string.count('1')

if count.even?
  puts "#{string}0"
else
  puts "#{string}1"
end
