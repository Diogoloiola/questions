require 'byebug'
counter = 0
index = 0
loop do
  number = gets.strip

  break if number.strip == '0'

  number_two = gets.strip

  if counter > 0
    puts ''
  else
    counter += 1
  end

  puts "Instancia #{index += 1}"
  if number_two.include?(number)
    puts 'verdadeira'
  else
    puts 'falsa'
  end
end
