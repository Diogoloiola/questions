loop do
  line = gets.chomp

  break if line == '0'

  values = (1..line.to_i).to_a
  discarted = []
  while values.size != 1
    discarted << values.shift
    value = values.shift
    values << value
  end
  puts "Discarded cards: #{discarted.join(', ')}"
  puts "Remaining card: #{values.first}"
end
