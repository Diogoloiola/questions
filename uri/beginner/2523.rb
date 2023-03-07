while alphabet = gets
  gets.chomp
  indexs = gets.chomp.split.map(&:to_i)

  string = indexs.map do |index|
    alphabet[index -  1]
  end.join

  puts string
end
