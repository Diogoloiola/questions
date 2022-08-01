string = gets.chomp

counter = 0

string.each_char do |letter|
  if letter == '('
    counter += 1
  elsif counter >= 1
    counter -= 1
  end
end

if counter >= 1
  puts "Ainda temos #{counter} assunto(s) pendente(s)!"
else
  puts 'Partiu RU!'
end
