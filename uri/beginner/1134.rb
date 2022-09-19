def gets_option_gasoline
  option = gets.chomp.to_i

  option = gets.chomp.to_i until option >= 1 && option <= 4

  option
end

g = 0
a = 0
d = 0
loop do
  option = gets_option_gasoline
  case option
  when 1
    a += 1
  when 2
    g += 1
  when 3
    d += 1
  when 4
    break
  end
end
puts 'MUITO OBRIGADO'
puts "Alcool: #{a}"
puts "Gasolina: #{g}"
puts "Diesel: #{d}"
