def gets_avaliation
  avaliation = gets.chomp.to_f
  until avaliation >= 0 && avaliation <= 10
    puts 'nota invalida'
    avaliation = gets.chomp.to_f
  end
  avaliation
end

loop do
  n1 = gets_avaliation
  n2 = gets_avaliation
  puts "media = #{format('%.2f', (n1 + n2) / 2)}"

  option = 0
  loop do
    puts 'novo calculo (1-sim 2-nao)'
    option = gets.chomp.to_i
    break if [1, 2].include?(option)
  end

  break if option == 2
end
