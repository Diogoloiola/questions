numbers = gets.chomp.split(' ').map(&:to_i)

sorted_array = numbers.sort

if sorted_array == numbers
  puts 'C'
elsif sorted_array.reverse == numbers
  puts 'D'
else
  puts 'N'
end
