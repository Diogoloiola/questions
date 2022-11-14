def sum(matriz, column)
  sum = 0

  12.times do |i|
    sum += matriz[i][column]
  end
  sum
end

matriz = []
column = gets.chomp.to_i
option = gets.chomp

12.times do
  line = []
  12.times do
    line << gets.chomp.to_f
  end
  matriz << line
end

if option == 'S'
  puts format('%.1f', sum(matriz, column))
else
  puts format('%.1f', sum(matriz, column) / 12)
end
