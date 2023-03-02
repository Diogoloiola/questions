require 'byebug'

def gdc(num, dem)
  return num if dem.zero?

  gdc(dem, num % dem)
end

numbers = []

while line = gets
  num, dem = line.chomp.split.map(&:to_i)

  result = gdc(num, dem)

  numbers << result

  if result > 5
    puts 'Noel'
  else
    puts 'Gnomos'
  end
end

puts "#{numbers.reverse.join(' ')} "
