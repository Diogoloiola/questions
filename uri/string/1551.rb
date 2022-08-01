require 'byebug'
def count_letters(string)
  letters = {}
  string.each_char do |caracter|
    letters[caracter.to_sym] = 1 if letters[caracter.to_sym].nil? && !caracter.match(/[a-zA-Z]+/).nil?
  end
  letters
end

line = gets.chomp.to_i

(1..line).each do
  string = gets.chomp
  result = count_letters(string)
  count = result.inject(0) { |sum, e| sum + e[1] }

  if count == 26
    puts 'frase completa'
  elsif count >= 13
    puts 'frase quase completa'
  else
    puts 'frase mal elaborada'
  end
end
