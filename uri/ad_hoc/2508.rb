require 'byebug'
def fetch_numer(letter)
  case letter
  when 'A', 'J', 'S'
    1
  when 'B', 'K', 'T'
    2
  when 'C', 'L', 'U'
    3
  when 'D', 'M', 'V'
    4
  when 'E', 'N', 'W'
    5
  when 'F', 'O', 'X'
    6
  when 'G', 'P', 'Y'
    7
  when 'H', 'Q', 'Z'
    8
  when 'I', 'R'
    9
  else
    0
  end
end

while line = gets
  sum = line.chomp.split('').map do |letter|
    fetch_numer(letter.upcase)
  end.sum

  sum = sum.to_s.split('').map(&:to_i).sum while sum.to_s.size > 1

  puts sum
end
