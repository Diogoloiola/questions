def print_numbers(numbers)
  numbers.each do |number|
    puts number
  end
end

numbers = gets.chomp.split.map(&:to_i)

print_numbers(numbers.sort)
puts ''
print_numbers(numbers)
