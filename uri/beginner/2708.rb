salida = 0
vuelta = 0
persons = 0

loop do
  line = gets.chomp.split

  break if line.first == 'ABEND'

  if line[0] == 'SALIDA'
    salida += 1
    persons += line[1].to_i
  else
    vuelta += 1
    persons -= line[1].to_i
  end
end

puts persons
puts (salida - vuelta)
