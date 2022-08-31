while line = gets
  string = ''
  (0..line.to_i - 1).each do
    string += gets.to_i(2).chr
  end
  puts string
end
