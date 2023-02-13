def parse_string(string)
  string.split(' ').map do |value|
    value[0].downcase
  end.join
end

def count_aliterations(result)
  count = 0
  max = 0

  (0..result.size - 1).each do |index|
    if result[index] == result[index + 1]
      count += 1 if count.zero?
    else
      max += count if count.positive?
      count = 0
    end
  end
  max
end

while line = gets
  string = line.chomp

  puts count_aliterations(parse_string(string))
end
