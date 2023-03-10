alphabet = ('a'..'z').to_a

result = {}

cipher = gets.chomp

cipher.split('').each.with_index do |caractere, index|
  result[caractere.to_sym] = alphabet[index]
end

word = gets.chomp

word.each_char do |caractere|
  print result[caractere.to_sym]
end
puts ''
