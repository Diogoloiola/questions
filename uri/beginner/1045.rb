# se A ≥ B+C, apresente a mensagem: NAO FORMA TRIANGULO
# se A2 = B2 + C2, apresente a mensagem: TRIANGULO RETANGULO
# se A2 > B2 + C2, apresente a mensagem: TRIANGULO OBTUSANGULO
# se A2 < B2 + C2, apresente a mensagem: TRIANGULO ACUTANGULO
# se os três lados forem iguais, apresente a mensagem: TRIANGULO EQUILATERO
# se apenas dois dos lados forem iguais, apresente a mensagem: TRIANGULO ISOSCELES
a, b, c = gets.chomp.split.map(&:to_f).sort.reverse

valid_triangule = true
if a >= b + c
  valid_triangule = false
  puts 'NAO FORMA TRIANGULO'  
elsif (a**2) == (b**2) + (c**2)
  puts 'TRIANGULO RETANGULO'
elsif (a**2) > (b**2) + (c**2)
  puts 'TRIANGULO OBTUSANGULO'
elsif (a**2) < (b**2) + (c**2)
  puts 'TRIANGULO ACUTANGULO'
end

if a == b && c == b
  puts 'TRIANGULO EQUILATERO'
elsif [a, b, c].uniq.size == 2 && valid_triangule
  puts 'TRIANGULO ISOSCELES'
end
