require 'date'
line = gets.chomp.to_i

(1..line).each do
  date_one, date_two = gets.chomp.split.map { |d| Date.parse(d) }

  if date_one > date_two
    puts (date_two - date_one).to_i.abs
  else
    puts (date_one - date_two).to_i.abs
  end
end
