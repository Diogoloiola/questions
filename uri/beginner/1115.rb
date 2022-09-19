loop do
  n1, n2 = gets.chomp.split(' ').map(&:to_f)

  if n1.positive? && n2.positive?
    puts 'primeiro'
  elsif n1.positive? && n2.negative?
    puts 'quarto'
  elsif n1.negative? && n2.positive?
    puts 'segundo'
  elsif n1.negative? && n2.negative?
    puts 'terceiro'
  elsif n1.zero? && (n2.positive? || n2.negative?)
    break
  elsif n2.zero? && (n1.positive? || n1.negative?)
    break
  else
    break
  end
end
