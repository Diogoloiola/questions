@c = 0

def sum(matriz) # rubocop:disable Metrics/MethodLength
  line = 11
  column = 0
  sum = 0.0
  while column < 12
    counter = 0

    while counter < line
      sum += matriz[counter][column]
      counter += 1
      @c += 1
    end

    column += 1
    line -= 1
  end
  sum.to_f
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
