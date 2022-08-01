require 'byebug'
loop do
  string = gets.chomp

  break if string == '*'

  new_string = string.split.map do |s|
    s[0].downcase
  end

  if new_string.uniq.size == 1
    puts 'Y'
  else
    puts 'N'
  end
end
