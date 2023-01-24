# frozen_string_literal: true

while line = gets

  number = line.to_i

  original_array = (1..number).to_a

  array = []

  loop do
    break if array.size == number - 1

    array << gets.chomp.split.map(&:to_i)
    array.flatten!
  end

  puts (original_array - array.sort).first
end
