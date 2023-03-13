count = 1
loop do
  number = gets.chomp.to_i

  break if number.zero?

  number = gets.chomp.split.map(&:to_i).find.with_index do |n, index|
    n == index + 1
  end
  puts "Teste #{count}"
  puts number
  count += 1
  puts ''
end
