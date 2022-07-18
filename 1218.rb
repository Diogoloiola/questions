require 'byebug'

counter = 0
novo = 0
while line = gets
  line = line.to_i
  man = 0
  woman = 0
  values = gets.chomp.split
  values.each_with_index do |value, index|
    next if value.ord >= 65 && value.ord <= 90

    if values[index + 1] == 'F' && value.to_i == line
      woman += 1
    elsif values[index + 1] == 'M' && value.to_i == line
      man += 1
    end
  end

  if novo.zero?
    novo += 1
  else
    puts
  end

  puts "Caso #{counter += 1}:"
  puts "Pares Iguais: #{woman + man}"
  puts "F: #{woman}"
  puts "M: #{man}"
end
