loop do
  line = gets.chomp.to_i
  count = 0

  break if line.zero?

  loop do
    values = gets.chomp.split.map(&:to_i)

    break count += 1 if values.sort == values

    count += 1
  end

  puts count
end
