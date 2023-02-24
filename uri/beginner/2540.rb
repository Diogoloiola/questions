require 'byebug'
while menbers = gets

  menbers = menbers.to_i

  numbers = gets.chomp.split.map(&:to_i)

  ones = numbers.count(&:positive?)

  if ones >= ((menbers * 2) / 3.0)
    puts 'impeachment'
  else
    puts 'acusacao arquivada'
  end
end
