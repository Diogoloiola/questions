require 'byebug'
@c = 0

def sum(matriz)
  start_range = 11
  end_range = 10
  sum = 0.0
  j = 1
  while start_range >= 7
    (j..end_range).each do |i|
      sum += matriz[start_range][i]
      @c += 1
    end
    start_range -= 1
    end_range -= 1
    j += 1
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
