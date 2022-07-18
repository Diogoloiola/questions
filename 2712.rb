line = gets.to_i

(1..line).each do
  value = gets.chomp
  if !!value.match(/[A-Z]{3}-[0-9]{4}/)
    case value[value.size - 1].to_i
    when 1, 2
      puts 'Monday'.upcase
    when 3, 4
      puts 'Tuesday'.upcase
    when 5, 6
      puts 'Tuesday'.upcase
    when 7, 8
      puts 'Thursday'.upcase
    when 9, 0
      puts 'Friday'.upcase
    end
  else
    puts 'FAILURE'
  end
end
