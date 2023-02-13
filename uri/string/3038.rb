def parse_string(string)
  (0..string.size - 1).each do |index|
    case string[index]
    when '@'
      string[index] = 'a'
    when '&'
      string[index] = 'e'
    when '!'
      string[index] = 'i'
    when '*'
      string[index] = 'o'
    when '#'
      string[index] = 'u'
    end
  end
  string
end

while line = gets
  string = line.chomp

  puts parse_string(string)
end
