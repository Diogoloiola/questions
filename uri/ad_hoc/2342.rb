number = gets.chomp.to_i

result = eval(gets.chomp)

if result > number
  puts 'OVERFLOW'
else
 puts 'OK'
end