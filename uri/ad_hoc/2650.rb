require 'byebug'
line, max_value = gets.chomp.split.map(&:to_i)

titans = []

(1..line).each do
  string = gets.chomp
  value_titan = string.split.last.to_i

  next unless value_titan > max_value

  letters = string.split
  letters.pop
  titans << letters.join(' ')
end

titans.each do |titan|
  puts titan
end
