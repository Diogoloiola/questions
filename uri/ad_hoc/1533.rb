loop do
  line = gets.chomp.to_i

  break if line.zero?

  numbers = gets.chomp.split.map(&:to_i)

  max = numbers.max
  max_number = - 1
  i = 0

  numbers.each.with_index do |number, index|
    next if number == max

    if number > max_number
      max_number = number
      i = index
    end
  end

  puts i + 1
end
