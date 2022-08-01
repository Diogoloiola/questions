def decripty(string)
  size = string.size - 1

  center = size / 2

  string[0..center].reverse.concat(string[center + 1..size].reverse)
end

line = gets.to_i

(1..line).each do
  string = gets.chomp
  puts decripty(string)
end
