require 'byebug'

def max_value(objects)
  maximun_value = -1

  objects.each_value do |value|
    maximun_value = value if value > maximun_value
  end
  objects.key maximun_value
end

def parse_response(numbers, n)
  hash = Hash[(0...numbers.size).zip numbers]
  string = ''
  counter = 0
  loop do
    number = max_value(hash)
    string += number.to_s
    counter += 1
    hash.delete(number.to_i)
    break if counter == n
  end
  string
end

counter = 0

while line = gets
  numbers = gets.split.map(&:to_f)
  puts "Caso #{counter += 1}: #{parse_response(numbers, line.to_i)}"
end
