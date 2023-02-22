def count(value, number)
  counter = 0
  i = 0
  while i < value
    i += number
    counter += 1
  end
  counter
end

line = gets.chomp.to_i

(1..line).each do
  value, number = gets.chomp.split.map(&:to_i)

  puts count(value, number)
end
