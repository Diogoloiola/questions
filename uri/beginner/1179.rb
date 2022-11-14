def print_elements(array, message)
  array.each_with_index { |m, index| puts "#{message}[#{index}] = #{m}" }
end
evens = []
odds = []

15.times do
  n = gets.chomp.to_i

  n.odd? ? odds << n : evens << n

  if evens.size == 5
    print_elements(evens, 'par')
    evens = []
  elsif odds.size == 5
    print_elements(odds, 'impar')
    odds = []
  end
end
print_elements(odds, 'impar')
print_elements(evens, 'par')
