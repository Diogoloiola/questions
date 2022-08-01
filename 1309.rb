def format_number(number) # rubocop:disable Metrics/MethodLength
  length = number.length - 1
  new_string = ''
  counter = 0
  (0..length).reverse_each do |index|
    if counter == 3
      new_string += ','
      counter = 0
    end
    new_string += number[index]
    counter += 1
  end
  new_string.reverse
end

while number = gets
  number = number.chomp
  cents = gets.chomp

  puts "$#{format_number(number).concat(".#{cents.rjust(2, '0')}")}"
end
