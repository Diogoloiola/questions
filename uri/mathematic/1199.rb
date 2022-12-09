loop do
  number = gets.chomp

  break if number == '-1'

  if number.include?('0x')
    puts number.to_i(16)
  else
    puts "0x#{number.to_i.to_s(16).upcase}"
  end
end
