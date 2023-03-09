require 'byebug'

def calculae_price(number)
  if number <= 10
    puts '7'
  elsif number <= 30
    number -= 10
    puts 7 + (number * 1)
  elsif number <= 100
    number -= 30
    puts 7 + 20 + (number * 2)
  elsif number >= 101
    number -= 100
    puts 7 + 20 + 140 + (number * 5)
  end
end

calculae_price(gets.chomp.to_i)
