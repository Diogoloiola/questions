require 'byebug'
line = gets.chomp.to_i

(1..line).each do
  gets

  numbers = gets.chomp.split.map(&:to_i).select(&:odd?).sort!

  odd_numbers = []

  while numbers.size >= 1
    odd_numbers << numbers.pop
    odd_numbers << numbers.shift(1)
  end
  odd_numbers.flatten!
  print odd_numbers[0]
  (1..odd_numbers.size - 1).each do |index|
    print " #{odd_numbers[index]}"
  end
  puts
end
