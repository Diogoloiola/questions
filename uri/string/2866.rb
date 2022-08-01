line = gets.to_i

(1..line).each do
  string = gets.chomp

  new_string = ''

  string.each_char do |caracter|
    new_string += caracter if caracter.ord >= 97 && caracter.ord <= 122
  end
  
  puts new_string.reverse
end
