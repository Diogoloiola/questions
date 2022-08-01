require 'byebug'
while line = gets


  counter = 0
  line.each_char.with_index do |caracter, index|
    next if caracter.empty?

    counter += 1
    if (counter % 2).zero?
      line[index] = caracter.downcase unless caracter == caracter.downcase

    elsif caracter == caracter.downcase
      line[index] = caracter.upcase
    end
  end
  puts line
end
