row, column = gets.chomp.split.map(&:to_i)

matriz = []
sums = []

(1..row).each do
  values = gets.chomp.split.map(&:to_i)
  matriz << values
  sums << values.sum
end

(0..column - 1).each do |i|
  sum = 0
  (0..row - 1).each do |j|
    sum += matriz[j][i]
  end
  sums << sum
end

puts sums.max
