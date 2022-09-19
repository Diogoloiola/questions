inter = 0
gremio = 0
draw = 0
counter = 0
loop do
  counter += 1
  n1, n2 = gets.chomp.split.map(&:to_i)

  if n1 == n2
    draw += 1
  elsif n1 > n2
    inter += 1
  else
    gremio += 1
  end

  puts 'Novo grenal (1-sim 2-nao)'
  option = gets.chomp.to_i

  break if option == 2
end

puts "#{counter} grenais"
puts "Inter:#{inter}"
puts "Gremio:#{gremio}"
puts "Empates:#{draw}"

if gremio > inter
  puts 'Gremio venceu mais'
else
  puts 'Inter venceu mais'
end
