a, b, c, d = gets.chomp.split.map(&:to_i)

if (b > c) && (d > a) && ((c + d) > (a + b)) && (c.positive? && d.positive?) && a.even?
  puts 'Valores aceitos'
else
  puts 'Valores nao aceitos'
end

