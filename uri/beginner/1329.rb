loop do
  line = gets.chomp.to_i

  break if line.zero?

  numbers = gets.chomp.split.map(&:to_i)

  mary = numbers.count(&:zero?)
  john = numbers.count(&:positive?)

  puts "Mary won #{mary} times and John won #{john} times"
end
