require 'byebug'

hours = (0..23).to_a

initial, final_date = gets.chomp.split.map(&:to_i)

index = hours.index initial

i = index

counter = 0

loop do
  break if hours[i] == final_date

  i += 1
  counter += 1

  i = 0 if i > hours.size
end

if counter.zero?
  puts 'O JOGO DUROU 24 HORA(S)'
else
  puts "O JOGO DUROU #{initial > final_date ? counter - 1 : counter} HORA(S)"
end
