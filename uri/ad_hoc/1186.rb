require 'byebug'
@c = 0

def sum(matriz) # rubocop:disable Metrics/MethodLength
  column = 11
  line = 1
  sum = 0.0
  while column >= 0
    (line..11).each do |i|
      sum += matriz[i][column]
      @c += 1
    end
    column -= 1
    line += 1
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
