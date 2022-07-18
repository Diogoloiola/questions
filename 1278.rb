require 'byebug'

counter = 0

loop do
  line = gets.to_i
  break if line.zero?

  strings = []

  (1..line).each do
    string = gets.split.join ' '
    strings << string
  end
  max = strings.map(&:size).max

  if counter > 0
    puts ''
  else
    counter += 1
  end

  (0..line - 1).each do |i|
    spaces = max - strings[i].size
    (1..spaces).each do
      print ' '
    end
    puts strings[i]
  end
end
