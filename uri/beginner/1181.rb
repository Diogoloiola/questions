matriz = []
column = gets.chomp.to_i
option = gets.chomp

12.times do
  line = []
  12.times do
    line << gets.chomp.to_i
  end
  matriz << line
end

if option == 'S'
  puts format('%.1f', matriz[column].sum)
else
  puts format('%.1f', matriz[column].sum / 12)
end
