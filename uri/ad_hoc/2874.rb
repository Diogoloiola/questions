while line = gets
  size = line.chomp.to_i

  new_string = (1..size).map do
    gets.chomp.to_i(2).chr
  end.join

  puts new_string
end
