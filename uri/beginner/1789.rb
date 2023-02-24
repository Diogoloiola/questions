while line = gets
  numbers = gets.chomp.split.map(&:to_i)

  max = numbers.max

  if max <= 10
    puts '1'
  elsif max >= 10 && max < 20
    puts '2'
  else
    puts '3'
  end
end
