@c = 0

def sum(matriz)
  line = 1
  end_rane = 10
  column = 11
  sum = 0.0
  while column > 5
    j = line

    (j..end_rane).each do |i|
      sum += matriz[i][column]
      @c += 1
    end

    line += 1
    end_rane -= 1
    column -= 1
  end
  sum
end

matriz = []

choice = gets.chomp.to_s

12.times do
  line = []
  12.times do
    line << gets.chomp.to_f
  end
  matriz << line
end

if choice == 'S'
  puts format('%.1f', sum(matriz))
else
  puts format('%.1f', sum(matriz) / @c)
end
