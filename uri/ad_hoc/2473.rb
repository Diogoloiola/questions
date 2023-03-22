require 'byebug'

numbers = gets.chomp.split.map(&:to_i)
sorted_numbers = gets.chomp.split.map(&:to_i)

counter = 0

(0..numbers.size - 1).each do |i|
  (0..numbers.size - 1).each do |j|
    counter += 1 if numbers[i] == sorted_numbers[j]
  end
end

if count < 3
  puts 'azar'
elsif counter == 3
  puts 'terno'
elsif counter == 4
  puts 'quadra'
elsif counter == 5
  puts 'quina'
elsif counter == 6
  puts 'sena'
end
