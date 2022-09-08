value = gets.chomp.to_i

(1..value).each do
  number = gets.chomp.to_i

  if number.zero?
    puts 'NULL'
  elsif number.negative? && number.odd?
    puts 'ODD NEGATIVE'
  elsif number.odd?
    puts 'ODD POSITIVE'
  elsif number.negative? && number.even?
    puts 'EVEN NEGATIVE'
  else
    puts 'EVEN POSITIVE'
  end
end
