require 'byebug'

line = gets.chomp.to_i

(1..line).each do
  string = gets.chomp

  n1 = string[0].to_i
  caractere = string[1].to_s
  n2 = string[2].to_i

  if n1 == n2
    puts n1 * n2
  elsif caractere.downcase == caractere
    puts n1 + n2
  elsif caractere.upcase == caractere
    puts n2 - n1
  end
end
