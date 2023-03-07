counter = 1
loop do
  line = gets.chomp.to_i

  break if line.zero?

  sum = 0

  puts "Teste #{counter}"
  (1..line).each do
    n, m = gets.chomp.split.map(&:to_i)

    sum += n - m
    puts sum
  end
  counter += 1
  puts ''
end
