require 'byebug'

string = gets.chomp
crib = gets.chomp

size_string1 = string.size
end_string = crib.size

counter_two = 0
begin_strig = 0
counter = 0

while end_string <= size_string1

  new_string = string[begin_strig..end_string]

  new_string.each_char.with_index do |caracter, index|
    break counter += 1 if caracter == crib[index]
  end

  counter_two += 1 if counter.zero?
  counter = 0

  begin_strig += 1
  end_string += 1
end

puts counter_two
